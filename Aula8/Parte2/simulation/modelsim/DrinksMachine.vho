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

-- DATE "04/07/2017 15:20:43"

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

ENTITY 	DrinksMachine IS
    PORT (
	LEDG : OUT std_logic_vector(0 DOWNTO 0);
	KEY : IN std_logic_vector(0 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	SW : IN std_logic_vector(1 DOWNTO 0)
	);
END DrinksMachine;

-- Design Ports Information
-- LEDG[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DrinksMachine IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_LEDG : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_KEY : std_logic_vector(0 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_SW : std_logic_vector(1 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|s_currentState.finalState~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LEDG[0]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \inst|s_currentState.finalState~clkctrl_outclk\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \inst4|s_dirtyIn~feeder_combout\ : std_logic;
SIGNAL \inst4|s_dirtyIn~q\ : std_logic;
SIGNAL \inst4|s_previousIn~q\ : std_logic;
SIGNAL \inst4|Add0~0_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst4|Add0~1\ : std_logic;
SIGNAL \inst4|Add0~2_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~19_combout\ : std_logic;
SIGNAL \inst4|Add0~3\ : std_logic;
SIGNAL \inst4|Add0~4_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst4|Add0~5\ : std_logic;
SIGNAL \inst4|Add0~6_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst4|Add0~7\ : std_logic;
SIGNAL \inst4|Add0~8_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst4|Add0~9\ : std_logic;
SIGNAL \inst4|Add0~11\ : std_logic;
SIGNAL \inst4|Add0~12_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst4|Add0~13\ : std_logic;
SIGNAL \inst4|Add0~14_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~11_combout\ : std_logic;
SIGNAL \inst4|Add0~15\ : std_logic;
SIGNAL \inst4|Add0~16_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst4|Add0~17\ : std_logic;
SIGNAL \inst4|Add0~18_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst4|Add0~19\ : std_logic;
SIGNAL \inst4|Add0~20_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst4|Add0~21\ : std_logic;
SIGNAL \inst4|Add0~22_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst4|Add0~23\ : std_logic;
SIGNAL \inst4|Add0~24_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst4|Add0~25\ : std_logic;
SIGNAL \inst4|Add0~26_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst4|Add0~27\ : std_logic;
SIGNAL \inst4|Add0~28_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst4|Add0~29\ : std_logic;
SIGNAL \inst4|Add0~30_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~4_combout\ : std_logic;
SIGNAL \inst4|Add0~31\ : std_logic;
SIGNAL \inst4|Add0~32_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst4|Add0~33\ : std_logic;
SIGNAL \inst4|Add0~34_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst4|Add0~35\ : std_logic;
SIGNAL \inst4|Add0~36_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[18]~17_combout\ : std_logic;
SIGNAL \inst4|Add0~37\ : std_logic;
SIGNAL \inst4|Add0~38_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[19]~18_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst4|Add0~39\ : std_logic;
SIGNAL \inst4|Add0~40_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[20]~9_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[1]~2_combout\ : std_logic;
SIGNAL \inst4|LessThan0~4_combout\ : std_logic;
SIGNAL \inst4|LessThan0~5_combout\ : std_logic;
SIGNAL \inst4|LessThan0~6_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_combout\ : std_logic;
SIGNAL \inst4|LessThan0~2_combout\ : std_logic;
SIGNAL \inst4|LessThan0~3_combout\ : std_logic;
SIGNAL \inst4|LessThan0~7_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[22]~24_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst4|Add0~41\ : std_logic;
SIGNAL \inst4|Add0~43\ : std_logic;
SIGNAL \inst4|Add0~44_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[1]~3_combout\ : std_logic;
SIGNAL \inst4|Add0~42_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[21]~10_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt[1]~0_combout\ : std_logic;
SIGNAL \inst4|Add0~10_combout\ : std_logic;
SIGNAL \inst4|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst4|s_pulsedOut~q\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst3|s_dirtyIn~q\ : std_logic;
SIGNAL \inst3|s_previousIn~q\ : std_logic;
SIGNAL \inst3|s_pulsedOut~5_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~1_combout\ : std_logic;
SIGNAL \inst3|Add0~13\ : std_logic;
SIGNAL \inst3|Add0~14_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~12_combout\ : std_logic;
SIGNAL \inst3|Add0~15\ : std_logic;
SIGNAL \inst3|Add0~16_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~13_combout\ : std_logic;
SIGNAL \inst3|Add0~17\ : std_logic;
SIGNAL \inst3|Add0~18_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~14_combout\ : std_logic;
SIGNAL \inst3|Add0~19\ : std_logic;
SIGNAL \inst3|Add0~20_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~15_combout\ : std_logic;
SIGNAL \inst3|Add0~21\ : std_logic;
SIGNAL \inst3|Add0~22_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~16_combout\ : std_logic;
SIGNAL \inst3|Add0~23\ : std_logic;
SIGNAL \inst3|Add0~24_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~8_combout\ : std_logic;
SIGNAL \inst3|Add0~25\ : std_logic;
SIGNAL \inst3|Add0~26_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~9_combout\ : std_logic;
SIGNAL \inst3|Add0~27\ : std_logic;
SIGNAL \inst3|Add0~28_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~17_combout\ : std_logic;
SIGNAL \inst3|Add0~29\ : std_logic;
SIGNAL \inst3|Add0~30_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~5_combout\ : std_logic;
SIGNAL \inst3|Add0~31\ : std_logic;
SIGNAL \inst3|Add0~32_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~6_combout\ : std_logic;
SIGNAL \inst3|Add0~33\ : std_logic;
SIGNAL \inst3|Add0~34_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~7_combout\ : std_logic;
SIGNAL \inst3|Add0~35\ : std_logic;
SIGNAL \inst3|Add0~36_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[18]~18_combout\ : std_logic;
SIGNAL \inst3|Add0~37\ : std_logic;
SIGNAL \inst3|Add0~38_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[19]~19_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~3_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~2_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~0_combout\ : std_logic;
SIGNAL \inst3|Add0~39\ : std_logic;
SIGNAL \inst3|Add0~40_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[20]~10_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~1_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~4_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[18]~2_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[18]~3_combout\ : std_logic;
SIGNAL \inst3|Add0~41\ : std_logic;
SIGNAL \inst3|Add0~42_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[21]~11_combout\ : std_logic;
SIGNAL \inst3|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|LessThan0~6_combout\ : std_logic;
SIGNAL \inst3|LessThan0~7_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[18]~0_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~25_combout\ : std_logic;
SIGNAL \inst3|Add0~43\ : std_logic;
SIGNAL \inst3|Add0~44_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[22]~26_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt[18]~4_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~24_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~20_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~21_combout\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~22_combout\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~23_combout\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst3|s_debounceCnt~27_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~6_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~7_combout\ : std_logic;
SIGNAL \inst3|s_pulsedOut~q\ : std_logic;
SIGNAL \inst|Selector10~0_combout\ : std_logic;
SIGNAL \inst|s_nextState.initialState_138~combout\ : std_logic;
SIGNAL \inst|s_currentState~13_combout\ : std_logic;
SIGNAL \inst|s_currentState.initialState~q\ : std_logic;
SIGNAL \inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst|s_nextState.State20_130~combout\ : std_logic;
SIGNAL \inst|s_currentState~12_combout\ : std_logic;
SIGNAL \inst|s_currentState.State20~q\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|s_nextState.State40_122~combout\ : std_logic;
SIGNAL \inst|s_currentState~9_combout\ : std_logic;
SIGNAL \inst|s_currentState.State40~q\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst|s_nextState.State5060_114~combout\ : std_logic;
SIGNAL \inst|s_currentState~10_combout\ : std_logic;
SIGNAL \inst|s_currentState.State5060~q\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|Selector2~1_combout\ : std_logic;
SIGNAL \inst|s_nextState.State7080_106~combout\ : std_logic;
SIGNAL \inst|s_currentState~11_combout\ : std_logic;
SIGNAL \inst|s_currentState.State7080~q\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|Selector1~1_combout\ : std_logic;
SIGNAL \inst|s_nextState.finalState_98~combout\ : std_logic;
SIGNAL \inst|s_currentState~8_combout\ : std_logic;
SIGNAL \inst|s_currentState.finalState~q\ : std_logic;
SIGNAL \inst4|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);
SIGNAL \inst3|s_debounceCnt\ : std_logic_vector(22 DOWNTO 0);

BEGIN

LEDG <= ww_LEDG;
ww_KEY <= KEY;
ww_CLOCK_50 <= CLOCK_50;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\inst|s_currentState.finalState~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|s_currentState.finalState~q\);

-- Location: IOOBUF_X107_Y73_N9
\LEDG[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|s_currentState.finalState~q\,
	devoe => ww_devoe,
	o => \LEDG[0]~output_o\);

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

-- Location: CLKCTRL_G9
\inst|s_currentState.finalState~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|s_currentState.finalState~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|s_currentState.finalState~clkctrl_outclk\);

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

-- Location: LCCOMB_X110_Y30_N20
\inst4|s_dirtyIn~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_dirtyIn~feeder_combout\ = \SW[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SW[1]~input_o\,
	combout => \inst4|s_dirtyIn~feeder_combout\);

-- Location: FF_X110_Y30_N21
\inst4|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_dirtyIn~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_dirtyIn~q\);

-- Location: FF_X107_Y30_N23
\inst4|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst4|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_previousIn~q\);

-- Location: LCCOMB_X108_Y31_N10
\inst4|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~0_combout\ = \inst4|s_debounceCnt\(0) $ (VCC)
-- \inst4|Add0~1\ = CARRY(\inst4|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst4|Add0~0_combout\,
	cout => \inst4|Add0~1\);

-- Location: LCCOMB_X107_Y30_N0
\inst4|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~23_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[1]~0_combout\ & \inst4|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt[1]~0_combout\,
	datad => \inst4|Add0~0_combout\,
	combout => \inst4|s_debounceCnt~23_combout\);

-- Location: FF_X107_Y30_N1
\inst4|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~23_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(0));

-- Location: LCCOMB_X108_Y31_N12
\inst4|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~2_combout\ = (\inst4|s_debounceCnt\(1) & (\inst4|Add0~1\ & VCC)) # (!\inst4|s_debounceCnt\(1) & (!\inst4|Add0~1\))
-- \inst4|Add0~3\ = CARRY((!\inst4|s_debounceCnt\(1) & !\inst4|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst4|Add0~1\,
	combout => \inst4|Add0~2_combout\,
	cout => \inst4|Add0~3\);

-- Location: LCCOMB_X107_Y31_N16
\inst4|s_debounceCnt~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~19_combout\ = (\inst4|s_previousIn~q\ & (\inst4|Add0~2_combout\ & \inst4|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~2_combout\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~19_combout\);

-- Location: FF_X107_Y31_N17
\inst4|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~19_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(1));

-- Location: LCCOMB_X108_Y31_N14
\inst4|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~4_combout\ = (\inst4|s_debounceCnt\(2) & ((GND) # (!\inst4|Add0~3\))) # (!\inst4|s_debounceCnt\(2) & (\inst4|Add0~3\ $ (GND)))
-- \inst4|Add0~5\ = CARRY((\inst4|s_debounceCnt\(2)) # (!\inst4|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst4|Add0~3\,
	combout => \inst4|Add0~4_combout\,
	cout => \inst4|Add0~5\);

-- Location: LCCOMB_X108_Y30_N30
\inst4|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~20_combout\ = (\inst4|s_previousIn~q\ & (\inst4|Add0~4_combout\ & \inst4|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~4_combout\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~20_combout\);

-- Location: FF_X108_Y30_N31
\inst4|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~20_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(2));

-- Location: LCCOMB_X108_Y31_N16
\inst4|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~6_combout\ = (\inst4|s_debounceCnt\(3) & (\inst4|Add0~5\ & VCC)) # (!\inst4|s_debounceCnt\(3) & (!\inst4|Add0~5\))
-- \inst4|Add0~7\ = CARRY((!\inst4|s_debounceCnt\(3) & !\inst4|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst4|Add0~5\,
	combout => \inst4|Add0~6_combout\,
	cout => \inst4|Add0~7\);

-- Location: LCCOMB_X108_Y31_N8
\inst4|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~21_combout\ = (\inst4|s_previousIn~q\ & (\inst4|Add0~6_combout\ & \inst4|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|Add0~6_combout\,
	datac => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~21_combout\);

-- Location: FF_X108_Y31_N9
\inst4|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~21_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(3));

-- Location: LCCOMB_X108_Y31_N18
\inst4|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~8_combout\ = (\inst4|s_debounceCnt\(4) & ((GND) # (!\inst4|Add0~7\))) # (!\inst4|s_debounceCnt\(4) & (\inst4|Add0~7\ $ (GND)))
-- \inst4|Add0~9\ = CARRY((\inst4|s_debounceCnt\(4)) # (!\inst4|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst4|Add0~7\,
	combout => \inst4|Add0~8_combout\,
	cout => \inst4|Add0~9\);

-- Location: LCCOMB_X108_Y31_N2
\inst4|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~22_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[1]~0_combout\ & \inst4|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[1]~0_combout\,
	datad => \inst4|Add0~8_combout\,
	combout => \inst4|s_debounceCnt~22_combout\);

-- Location: FF_X108_Y31_N3
\inst4|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~22_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(4));

-- Location: LCCOMB_X108_Y31_N0
\inst4|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~5_combout\ = (!\inst4|s_debounceCnt\(1) & (!\inst4|s_debounceCnt\(4) & (!\inst4|s_debounceCnt\(3) & !\inst4|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(1),
	datab => \inst4|s_debounceCnt\(4),
	datac => \inst4|s_debounceCnt\(3),
	datad => \inst4|s_debounceCnt\(2),
	combout => \inst4|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X108_Y31_N20
\inst4|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~10_combout\ = (\inst4|s_debounceCnt\(5) & (\inst4|Add0~9\ & VCC)) # (!\inst4|s_debounceCnt\(5) & (!\inst4|Add0~9\))
-- \inst4|Add0~11\ = CARRY((!\inst4|s_debounceCnt\(5) & !\inst4|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst4|Add0~9\,
	combout => \inst4|Add0~10_combout\,
	cout => \inst4|Add0~11\);

-- Location: LCCOMB_X108_Y31_N22
\inst4|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~12_combout\ = (\inst4|s_debounceCnt\(6) & ((GND) # (!\inst4|Add0~11\))) # (!\inst4|s_debounceCnt\(6) & (\inst4|Add0~11\ $ (GND)))
-- \inst4|Add0~13\ = CARRY((\inst4|s_debounceCnt\(6)) # (!\inst4|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst4|Add0~11\,
	combout => \inst4|Add0~12_combout\,
	cout => \inst4|Add0~13\);

-- Location: LCCOMB_X107_Y30_N8
\inst4|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~1_combout\ = (\inst4|s_debounceCnt[1]~0_combout\ & ((\inst4|Add0~12_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~12_combout\,
	datac => \inst4|s_previousIn~q\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~1_combout\);

-- Location: FF_X107_Y30_N9
\inst4|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~1_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(6));

-- Location: LCCOMB_X108_Y31_N24
\inst4|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~14_combout\ = (\inst4|s_debounceCnt\(7) & (\inst4|Add0~13\ & VCC)) # (!\inst4|s_debounceCnt\(7) & (!\inst4|Add0~13\))
-- \inst4|Add0~15\ = CARRY((!\inst4|s_debounceCnt\(7) & !\inst4|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst4|Add0~13\,
	combout => \inst4|Add0~14_combout\,
	cout => \inst4|Add0~15\);

-- Location: LCCOMB_X107_Y30_N2
\inst4|s_debounceCnt~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~11_combout\ = (\inst4|Add0~14_combout\ & (\inst4|s_previousIn~q\ & \inst4|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~14_combout\,
	datac => \inst4|s_previousIn~q\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~11_combout\);

-- Location: FF_X107_Y30_N3
\inst4|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~11_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(7));

-- Location: LCCOMB_X108_Y31_N26
\inst4|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~16_combout\ = (\inst4|s_debounceCnt\(8) & ((GND) # (!\inst4|Add0~15\))) # (!\inst4|s_debounceCnt\(8) & (\inst4|Add0~15\ $ (GND)))
-- \inst4|Add0~17\ = CARRY((\inst4|s_debounceCnt\(8)) # (!\inst4|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst4|Add0~15\,
	combout => \inst4|Add0~16_combout\,
	cout => \inst4|Add0~17\);

-- Location: LCCOMB_X107_Y30_N16
\inst4|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~12_combout\ = (\inst4|s_debounceCnt[1]~0_combout\ & ((\inst4|Add0~16_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~16_combout\,
	datac => \inst4|s_previousIn~q\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~12_combout\);

-- Location: FF_X107_Y30_N17
\inst4|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~12_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(8));

-- Location: LCCOMB_X108_Y31_N28
\inst4|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~18_combout\ = (\inst4|s_debounceCnt\(9) & (\inst4|Add0~17\ & VCC)) # (!\inst4|s_debounceCnt\(9) & (!\inst4|Add0~17\))
-- \inst4|Add0~19\ = CARRY((!\inst4|s_debounceCnt\(9) & !\inst4|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst4|Add0~17\,
	combout => \inst4|Add0~18_combout\,
	cout => \inst4|Add0~19\);

-- Location: LCCOMB_X107_Y30_N14
\inst4|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~13_combout\ = (\inst4|s_debounceCnt[1]~0_combout\ & ((\inst4|Add0~18_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~18_combout\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~13_combout\);

-- Location: FF_X107_Y30_N15
\inst4|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~13_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(9));

-- Location: LCCOMB_X108_Y31_N30
\inst4|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~20_combout\ = (\inst4|s_debounceCnt\(10) & ((GND) # (!\inst4|Add0~19\))) # (!\inst4|s_debounceCnt\(10) & (\inst4|Add0~19\ $ (GND)))
-- \inst4|Add0~21\ = CARRY((\inst4|s_debounceCnt\(10)) # (!\inst4|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst4|Add0~19\,
	combout => \inst4|Add0~20_combout\,
	cout => \inst4|Add0~21\);

-- Location: LCCOMB_X109_Y30_N28
\inst4|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~14_combout\ = (\inst4|s_previousIn~q\ & (\inst4|Add0~20_combout\ & \inst4|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~20_combout\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~14_combout\);

-- Location: FF_X109_Y30_N29
\inst4|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~14_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(10));

-- Location: LCCOMB_X107_Y30_N12
\inst4|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~2_combout\ = (!\inst4|s_debounceCnt\(10) & (!\inst4|s_debounceCnt\(8) & (!\inst4|s_debounceCnt\(9) & !\inst4|s_debounceCnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(10),
	datab => \inst4|s_debounceCnt\(8),
	datac => \inst4|s_debounceCnt\(9),
	datad => \inst4|s_debounceCnt\(7),
	combout => \inst4|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X108_Y30_N0
\inst4|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~22_combout\ = (\inst4|s_debounceCnt\(11) & (\inst4|Add0~21\ & VCC)) # (!\inst4|s_debounceCnt\(11) & (!\inst4|Add0~21\))
-- \inst4|Add0~23\ = CARRY((!\inst4|s_debounceCnt\(11) & !\inst4|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst4|Add0~21\,
	combout => \inst4|Add0~22_combout\,
	cout => \inst4|Add0~23\);

-- Location: LCCOMB_X109_Y30_N26
\inst4|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~15_combout\ = (\inst4|s_debounceCnt[1]~0_combout\ & ((\inst4|Add0~22_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~22_combout\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~15_combout\);

-- Location: FF_X109_Y30_N27
\inst4|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~15_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(11));

-- Location: LCCOMB_X108_Y30_N2
\inst4|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~24_combout\ = (\inst4|s_debounceCnt\(12) & ((GND) # (!\inst4|Add0~23\))) # (!\inst4|s_debounceCnt\(12) & (\inst4|Add0~23\ $ (GND)))
-- \inst4|Add0~25\ = CARRY((\inst4|s_debounceCnt\(12)) # (!\inst4|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst4|Add0~23\,
	combout => \inst4|Add0~24_combout\,
	cout => \inst4|Add0~25\);

-- Location: LCCOMB_X109_Y30_N22
\inst4|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~7_combout\ = (\inst4|Add0~24_combout\ & (\inst4|s_previousIn~q\ & \inst4|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add0~24_combout\,
	datac => \inst4|s_previousIn~q\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~7_combout\);

-- Location: FF_X109_Y30_N23
\inst4|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~7_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(12));

-- Location: LCCOMB_X108_Y30_N4
\inst4|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~26_combout\ = (\inst4|s_debounceCnt\(13) & (\inst4|Add0~25\ & VCC)) # (!\inst4|s_debounceCnt\(13) & (!\inst4|Add0~25\))
-- \inst4|Add0~27\ = CARRY((!\inst4|s_debounceCnt\(13) & !\inst4|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst4|Add0~25\,
	combout => \inst4|Add0~26_combout\,
	cout => \inst4|Add0~27\);

-- Location: LCCOMB_X109_Y30_N4
\inst4|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~8_combout\ = (\inst4|s_previousIn~q\ & (\inst4|Add0~26_combout\ & \inst4|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~26_combout\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~8_combout\);

-- Location: FF_X109_Y30_N5
\inst4|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~8_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(13));

-- Location: LCCOMB_X108_Y30_N6
\inst4|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~28_combout\ = (\inst4|s_debounceCnt\(14) & ((GND) # (!\inst4|Add0~27\))) # (!\inst4|s_debounceCnt\(14) & (\inst4|Add0~27\ $ (GND)))
-- \inst4|Add0~29\ = CARRY((\inst4|s_debounceCnt\(14)) # (!\inst4|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst4|Add0~27\,
	combout => \inst4|Add0~28_combout\,
	cout => \inst4|Add0~29\);

-- Location: LCCOMB_X109_Y30_N16
\inst4|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~16_combout\ = (\inst4|s_debounceCnt[1]~0_combout\ & ((\inst4|Add0~28_combout\) # (!\inst4|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~28_combout\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~16_combout\);

-- Location: FF_X109_Y30_N17
\inst4|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~16_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(14));

-- Location: LCCOMB_X108_Y30_N8
\inst4|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~30_combout\ = (\inst4|s_debounceCnt\(15) & (\inst4|Add0~29\ & VCC)) # (!\inst4|s_debounceCnt\(15) & (!\inst4|Add0~29\))
-- \inst4|Add0~31\ = CARRY((!\inst4|s_debounceCnt\(15) & !\inst4|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst4|Add0~29\,
	combout => \inst4|Add0~30_combout\,
	cout => \inst4|Add0~31\);

-- Location: LCCOMB_X109_Y30_N12
\inst4|s_debounceCnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~4_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[1]~0_combout\ & \inst4|Add0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[1]~0_combout\,
	datad => \inst4|Add0~30_combout\,
	combout => \inst4|s_debounceCnt~4_combout\);

-- Location: FF_X109_Y30_N13
\inst4|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~4_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(15));

-- Location: LCCOMB_X108_Y30_N10
\inst4|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~32_combout\ = (\inst4|s_debounceCnt\(16) & ((GND) # (!\inst4|Add0~31\))) # (!\inst4|s_debounceCnt\(16) & (\inst4|Add0~31\ $ (GND)))
-- \inst4|Add0~33\ = CARRY((\inst4|s_debounceCnt\(16)) # (!\inst4|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst4|Add0~31\,
	combout => \inst4|Add0~32_combout\,
	cout => \inst4|Add0~33\);

-- Location: LCCOMB_X108_Y30_N28
\inst4|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~5_combout\ = (\inst4|s_previousIn~q\ & (\inst4|Add0~32_combout\ & \inst4|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|Add0~32_combout\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~5_combout\);

-- Location: FF_X108_Y30_N29
\inst4|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~5_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(16));

-- Location: LCCOMB_X108_Y30_N12
\inst4|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~34_combout\ = (\inst4|s_debounceCnt\(17) & (\inst4|Add0~33\ & VCC)) # (!\inst4|s_debounceCnt\(17) & (!\inst4|Add0~33\))
-- \inst4|Add0~35\ = CARRY((!\inst4|s_debounceCnt\(17) & !\inst4|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst4|Add0~33\,
	combout => \inst4|Add0~34_combout\,
	cout => \inst4|Add0~35\);

-- Location: LCCOMB_X107_Y30_N30
\inst4|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~6_combout\ = (\inst4|Add0~34_combout\ & (\inst4|s_previousIn~q\ & \inst4|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add0~34_combout\,
	datac => \inst4|s_previousIn~q\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt~6_combout\);

-- Location: FF_X107_Y30_N31
\inst4|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~6_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(17));

-- Location: LCCOMB_X108_Y30_N14
\inst4|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~36_combout\ = (\inst4|s_debounceCnt\(18) & ((GND) # (!\inst4|Add0~35\))) # (!\inst4|s_debounceCnt\(18) & (\inst4|Add0~35\ $ (GND)))
-- \inst4|Add0~37\ = CARRY((\inst4|s_debounceCnt\(18)) # (!\inst4|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst4|Add0~35\,
	combout => \inst4|Add0~36_combout\,
	cout => \inst4|Add0~37\);

-- Location: LCCOMB_X109_Y30_N14
\inst4|s_debounceCnt[18]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[18]~17_combout\ = (\inst4|s_debounceCnt[1]~3_combout\ & (\inst4|s_debounceCnt[1]~0_combout\ & ((\inst4|Add0~36_combout\) # (!\inst4|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt[1]~3_combout\,
	datac => \inst4|s_debounceCnt[1]~0_combout\,
	datad => \inst4|Add0~36_combout\,
	combout => \inst4|s_debounceCnt[18]~17_combout\);

-- Location: FF_X109_Y30_N15
\inst4|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[18]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(18));

-- Location: LCCOMB_X108_Y30_N16
\inst4|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~38_combout\ = (\inst4|s_debounceCnt\(19) & (\inst4|Add0~37\ & VCC)) # (!\inst4|s_debounceCnt\(19) & (!\inst4|Add0~37\))
-- \inst4|Add0~39\ = CARRY((!\inst4|s_debounceCnt\(19) & !\inst4|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst4|Add0~37\,
	combout => \inst4|Add0~38_combout\,
	cout => \inst4|Add0~39\);

-- Location: LCCOMB_X109_Y30_N0
\inst4|s_debounceCnt[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[19]~18_combout\ = (\inst4|s_debounceCnt[1]~3_combout\ & (\inst4|s_debounceCnt[1]~0_combout\ & ((\inst4|Add0~38_combout\) # (!\inst4|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt[1]~3_combout\,
	datac => \inst4|Add0~38_combout\,
	datad => \inst4|s_debounceCnt[1]~0_combout\,
	combout => \inst4|s_debounceCnt[19]~18_combout\);

-- Location: FF_X109_Y30_N1
\inst4|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[19]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(19));

-- Location: LCCOMB_X109_Y30_N2
\inst4|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~3_combout\ = (!\inst4|s_debounceCnt\(11) & (!\inst4|s_debounceCnt\(19) & (!\inst4|s_debounceCnt\(18) & !\inst4|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(11),
	datab => \inst4|s_debounceCnt\(19),
	datac => \inst4|s_debounceCnt\(18),
	datad => \inst4|s_debounceCnt\(14),
	combout => \inst4|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X107_Y30_N4
\inst4|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~0_combout\ = (!\inst4|s_debounceCnt\(17) & (!\inst4|s_debounceCnt\(6) & (!\inst4|s_debounceCnt\(15) & !\inst4|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(17),
	datab => \inst4|s_debounceCnt\(6),
	datac => \inst4|s_debounceCnt\(15),
	datad => \inst4|s_debounceCnt\(16),
	combout => \inst4|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X108_Y30_N18
\inst4|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~40_combout\ = (\inst4|s_debounceCnt\(20) & ((GND) # (!\inst4|Add0~39\))) # (!\inst4|s_debounceCnt\(20) & (\inst4|Add0~39\ $ (GND)))
-- \inst4|Add0~41\ = CARRY((\inst4|s_debounceCnt\(20)) # (!\inst4|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst4|Add0~39\,
	combout => \inst4|Add0~40_combout\,
	cout => \inst4|Add0~41\);

-- Location: LCCOMB_X108_Y30_N26
\inst4|s_debounceCnt[20]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[20]~9_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[1]~3_combout\ & (\inst4|s_debounceCnt[1]~0_combout\ & \inst4|Add0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt[1]~3_combout\,
	datac => \inst4|s_debounceCnt[1]~0_combout\,
	datad => \inst4|Add0~40_combout\,
	combout => \inst4|s_debounceCnt[20]~9_combout\);

-- Location: FF_X108_Y30_N27
\inst4|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[20]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(20));

-- Location: LCCOMB_X109_Y30_N6
\inst4|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~1_combout\ = (!\inst4|s_debounceCnt\(12) & (!\inst4|s_debounceCnt\(13) & (!\inst4|s_debounceCnt\(20) & !\inst4|s_debounceCnt\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(12),
	datab => \inst4|s_debounceCnt\(13),
	datac => \inst4|s_debounceCnt\(20),
	datad => \inst4|s_debounceCnt\(21),
	combout => \inst4|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X107_Y30_N6
\inst4|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~4_combout\ = (\inst4|s_pulsedOut~2_combout\ & (\inst4|s_pulsedOut~3_combout\ & (\inst4|s_pulsedOut~0_combout\ & \inst4|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_pulsedOut~2_combout\,
	datab => \inst4|s_pulsedOut~3_combout\,
	datac => \inst4|s_pulsedOut~0_combout\,
	datad => \inst4|s_pulsedOut~1_combout\,
	combout => \inst4|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X107_Y30_N10
\inst4|s_debounceCnt[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[1]~2_combout\ = (\inst4|s_debounceCnt\(5)) # ((\inst4|s_debounceCnt\(0)) # ((!\inst4|s_pulsedOut~4_combout\) # (!\inst4|s_pulsedOut~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(5),
	datab => \inst4|s_debounceCnt\(0),
	datac => \inst4|s_pulsedOut~5_combout\,
	datad => \inst4|s_pulsedOut~4_combout\,
	combout => \inst4|s_debounceCnt[1]~2_combout\);

-- Location: LCCOMB_X109_Y30_N20
\inst4|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~4_combout\ = (\inst4|s_debounceCnt\(8) & (\inst4|s_debounceCnt\(19) & (\inst4|s_debounceCnt\(18) & \inst4|s_debounceCnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(8),
	datab => \inst4|s_debounceCnt\(19),
	datac => \inst4|s_debounceCnt\(18),
	datad => \inst4|s_debounceCnt\(14),
	combout => \inst4|LessThan0~4_combout\);

-- Location: LCCOMB_X109_Y30_N18
\inst4|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~5_combout\ = (\inst4|s_debounceCnt\(11) & (\inst4|s_debounceCnt\(9) & \inst4|LessThan0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(11),
	datac => \inst4|s_debounceCnt\(9),
	datad => \inst4|LessThan0~4_combout\,
	combout => \inst4|LessThan0~5_combout\);

-- Location: LCCOMB_X108_Y31_N4
\inst4|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~6_combout\ = (\inst4|s_debounceCnt\(6) & ((\inst4|s_debounceCnt\(5)) # ((\inst4|s_debounceCnt\(0)) # (!\inst4|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(5),
	datab => \inst4|s_debounceCnt\(0),
	datac => \inst4|s_debounceCnt\(6),
	datad => \inst4|s_pulsedOut~5_combout\,
	combout => \inst4|LessThan0~6_combout\);

-- Location: LCCOMB_X109_Y30_N30
\inst4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_combout\ = (\inst4|s_debounceCnt\(12)) # ((\inst4|s_debounceCnt\(13)) # ((\inst4|s_debounceCnt\(11) & \inst4|s_debounceCnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(12),
	datab => \inst4|s_debounceCnt\(13),
	datac => \inst4|s_debounceCnt\(11),
	datad => \inst4|s_debounceCnt\(10),
	combout => \inst4|LessThan0~1_combout\);

-- Location: LCCOMB_X109_Y30_N24
\inst4|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~2_combout\ = (\inst4|s_debounceCnt\(15)) # ((\inst4|s_debounceCnt\(16)) # ((\inst4|s_debounceCnt\(14) & \inst4|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(15),
	datab => \inst4|s_debounceCnt\(14),
	datac => \inst4|LessThan0~1_combout\,
	datad => \inst4|s_debounceCnt\(16),
	combout => \inst4|LessThan0~2_combout\);

-- Location: LCCOMB_X109_Y30_N10
\inst4|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~3_combout\ = (\inst4|s_debounceCnt\(19) & (\inst4|s_debounceCnt\(18) & ((\inst4|s_debounceCnt\(17)) # (\inst4|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(17),
	datab => \inst4|s_debounceCnt\(19),
	datac => \inst4|s_debounceCnt\(18),
	datad => \inst4|LessThan0~2_combout\,
	combout => \inst4|LessThan0~3_combout\);

-- Location: LCCOMB_X107_Y30_N18
\inst4|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~7_combout\ = (\inst4|LessThan0~3_combout\) # ((\inst4|LessThan0~5_combout\ & ((\inst4|s_debounceCnt\(7)) # (\inst4|LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(7),
	datab => \inst4|LessThan0~5_combout\,
	datac => \inst4|LessThan0~6_combout\,
	datad => \inst4|LessThan0~3_combout\,
	combout => \inst4|LessThan0~7_combout\);

-- Location: LCCOMB_X107_Y30_N24
\inst4|s_debounceCnt[22]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[22]~24_combout\ = (\inst4|s_debounceCnt\(22) & (\inst4|LessThan0~0_combout\ & ((!\inst4|LessThan0~7_combout\)))) # (!\inst4|s_debounceCnt\(22) & (((\inst4|s_debounceCnt[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~0_combout\,
	datab => \inst4|s_debounceCnt\(22),
	datac => \inst4|s_debounceCnt[1]~2_combout\,
	datad => \inst4|LessThan0~7_combout\,
	combout => \inst4|s_debounceCnt[22]~24_combout\);

-- Location: LCCOMB_X107_Y30_N26
\inst4|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[22]~25_combout\ = (\inst4|s_dirtyIn~q\ & \inst4|s_debounceCnt[22]~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|s_dirtyIn~q\,
	datad => \inst4|s_debounceCnt[22]~24_combout\,
	combout => \inst4|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X108_Y30_N20
\inst4|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~42_combout\ = (\inst4|s_debounceCnt\(21) & (\inst4|Add0~41\ & VCC)) # (!\inst4|s_debounceCnt\(21) & (!\inst4|Add0~41\))
-- \inst4|Add0~43\ = CARRY((!\inst4|s_debounceCnt\(21) & !\inst4|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst4|Add0~41\,
	combout => \inst4|Add0~42_combout\,
	cout => \inst4|Add0~43\);

-- Location: LCCOMB_X108_Y30_N22
\inst4|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add0~44_combout\ = \inst4|Add0~43\ $ (\inst4|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst4|s_debounceCnt\(22),
	cin => \inst4|Add0~43\,
	combout => \inst4|Add0~44_combout\);

-- Location: LCCOMB_X107_Y30_N28
\inst4|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[22]~26_combout\ = (\inst4|s_previousIn~q\ & (((\inst4|s_debounceCnt[22]~25_combout\ & \inst4|Add0~44_combout\)))) # (!\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[1]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt[1]~0_combout\,
	datac => \inst4|s_debounceCnt[22]~25_combout\,
	datad => \inst4|Add0~44_combout\,
	combout => \inst4|s_debounceCnt[22]~26_combout\);

-- Location: FF_X107_Y30_N29
\inst4|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(22));

-- Location: LCCOMB_X107_Y30_N22
\inst4|s_debounceCnt[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[1]~3_combout\ = ((\inst4|s_debounceCnt\(22)) # ((\inst4|s_debounceCnt[1]~2_combout\) # (!\inst4|s_previousIn~q\))) # (!\inst4|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_dirtyIn~q\,
	datab => \inst4|s_debounceCnt\(22),
	datac => \inst4|s_previousIn~q\,
	datad => \inst4|s_debounceCnt[1]~2_combout\,
	combout => \inst4|s_debounceCnt[1]~3_combout\);

-- Location: LCCOMB_X108_Y30_N24
\inst4|s_debounceCnt[21]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[21]~10_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[1]~3_combout\ & (\inst4|s_debounceCnt[1]~0_combout\ & \inst4|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_previousIn~q\,
	datab => \inst4|s_debounceCnt[1]~3_combout\,
	datac => \inst4|s_debounceCnt[1]~0_combout\,
	datad => \inst4|Add0~42_combout\,
	combout => \inst4|s_debounceCnt[21]~10_combout\);

-- Location: FF_X108_Y30_N25
\inst4|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt[21]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(21));

-- Location: LCCOMB_X109_Y30_N8
\inst4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (!\inst4|s_debounceCnt\(21) & !\inst4|s_debounceCnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_debounceCnt\(21),
	datac => \inst4|s_debounceCnt\(20),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X107_Y30_N20
\inst4|s_debounceCnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt[1]~0_combout\ = (\inst4|s_dirtyIn~q\ & (((\inst4|LessThan0~0_combout\ & !\inst4|LessThan0~7_combout\)) # (!\inst4|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~0_combout\,
	datab => \inst4|s_debounceCnt\(22),
	datac => \inst4|s_dirtyIn~q\,
	datad => \inst4|LessThan0~7_combout\,
	combout => \inst4|s_debounceCnt[1]~0_combout\);

-- Location: LCCOMB_X108_Y31_N6
\inst4|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_debounceCnt~27_combout\ = (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt[1]~0_combout\ & \inst4|Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt[1]~0_combout\,
	datad => \inst4|Add0~10_combout\,
	combout => \inst4|s_debounceCnt~27_combout\);

-- Location: FF_X108_Y31_N7
\inst4|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_debounceCnt~27_combout\,
	ena => \inst4|s_debounceCnt[1]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_debounceCnt\(5));

-- Location: LCCOMB_X110_Y30_N2
\inst4|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~6_combout\ = (!\inst4|s_debounceCnt\(22) & (\inst4|s_previousIn~q\ & (\inst4|s_debounceCnt\(0) & \inst4|s_dirtyIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(22),
	datab => \inst4|s_previousIn~q\,
	datac => \inst4|s_debounceCnt\(0),
	datad => \inst4|s_dirtyIn~q\,
	combout => \inst4|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X111_Y35_N22
\inst4|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|s_pulsedOut~7_combout\ = (!\inst4|s_debounceCnt\(5) & (\inst4|s_pulsedOut~5_combout\ & (\inst4|s_pulsedOut~6_combout\ & \inst4|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_debounceCnt\(5),
	datab => \inst4|s_pulsedOut~5_combout\,
	datac => \inst4|s_pulsedOut~6_combout\,
	datad => \inst4|s_pulsedOut~4_combout\,
	combout => \inst4|s_pulsedOut~7_combout\);

-- Location: FF_X111_Y35_N23
\inst4|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst4|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|s_pulsedOut~q\);

-- Location: LCCOMB_X112_Y32_N10
\inst3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst3|s_debounceCnt\(0) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst3|s_debounceCnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(0),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

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

-- Location: FF_X113_Y31_N9
\inst3|s_dirtyIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \SW[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_dirtyIn~q\);

-- Location: FF_X113_Y31_N23
\inst3|s_previousIn\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	asdata => \inst3|s_dirtyIn~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_previousIn~q\);

-- Location: LCCOMB_X112_Y32_N8
\inst3|s_pulsedOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~5_combout\ = (!\inst3|s_debounceCnt\(4) & (!\inst3|s_debounceCnt\(1) & (!\inst3|s_debounceCnt\(3) & !\inst3|s_debounceCnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(4),
	datab => \inst3|s_debounceCnt\(1),
	datac => \inst3|s_debounceCnt\(3),
	datad => \inst3|s_debounceCnt\(2),
	combout => \inst3|s_pulsedOut~5_combout\);

-- Location: LCCOMB_X112_Y32_N20
\inst3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst3|s_debounceCnt\(5) & (\inst3|Add0~9\ & VCC)) # (!\inst3|s_debounceCnt\(5) & (!\inst3|Add0~9\))
-- \inst3|Add0~11\ = CARRY((!\inst3|s_debounceCnt\(5) & !\inst3|Add0~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(5),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X112_Y32_N22
\inst3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = (\inst3|s_debounceCnt\(6) & ((GND) # (!\inst3|Add0~11\))) # (!\inst3|s_debounceCnt\(6) & (\inst3|Add0~11\ $ (GND)))
-- \inst3|Add0~13\ = CARRY((\inst3|s_debounceCnt\(6)) # (!\inst3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(6),
	datad => VCC,
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\,
	cout => \inst3|Add0~13\);

-- Location: LCCOMB_X113_Y31_N26
\inst3|s_debounceCnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~1_combout\ = (\inst3|s_debounceCnt[18]~0_combout\ & ((\inst3|Add0~12_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[18]~0_combout\,
	datad => \inst3|Add0~12_combout\,
	combout => \inst3|s_debounceCnt~1_combout\);

-- Location: FF_X113_Y31_N27
\inst3|s_debounceCnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~1_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(6));

-- Location: LCCOMB_X112_Y32_N24
\inst3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~14_combout\ = (\inst3|s_debounceCnt\(7) & (\inst3|Add0~13\ & VCC)) # (!\inst3|s_debounceCnt\(7) & (!\inst3|Add0~13\))
-- \inst3|Add0~15\ = CARRY((!\inst3|s_debounceCnt\(7) & !\inst3|Add0~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(7),
	datad => VCC,
	cin => \inst3|Add0~13\,
	combout => \inst3|Add0~14_combout\,
	cout => \inst3|Add0~15\);

-- Location: LCCOMB_X114_Y31_N0
\inst3|s_debounceCnt~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~12_combout\ = (\inst3|Add0~14_combout\ & \inst3|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~14_combout\,
	datad => \inst3|s_debounceCnt[18]~4_combout\,
	combout => \inst3|s_debounceCnt~12_combout\);

-- Location: FF_X114_Y31_N1
\inst3|s_debounceCnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~12_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(7));

-- Location: LCCOMB_X112_Y32_N26
\inst3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~16_combout\ = (\inst3|s_debounceCnt\(8) & ((GND) # (!\inst3|Add0~15\))) # (!\inst3|s_debounceCnt\(8) & (\inst3|Add0~15\ $ (GND)))
-- \inst3|Add0~17\ = CARRY((\inst3|s_debounceCnt\(8)) # (!\inst3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(8),
	datad => VCC,
	cin => \inst3|Add0~15\,
	combout => \inst3|Add0~16_combout\,
	cout => \inst3|Add0~17\);

-- Location: LCCOMB_X114_Y31_N26
\inst3|s_debounceCnt~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~13_combout\ = (\inst3|s_debounceCnt[18]~0_combout\ & ((\inst3|Add0~16_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~16_combout\,
	datad => \inst3|s_debounceCnt[18]~0_combout\,
	combout => \inst3|s_debounceCnt~13_combout\);

-- Location: FF_X114_Y31_N27
\inst3|s_debounceCnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~13_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(8));

-- Location: LCCOMB_X112_Y32_N28
\inst3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~18_combout\ = (\inst3|s_debounceCnt\(9) & (\inst3|Add0~17\ & VCC)) # (!\inst3|s_debounceCnt\(9) & (!\inst3|Add0~17\))
-- \inst3|Add0~19\ = CARRY((!\inst3|s_debounceCnt\(9) & !\inst3|Add0~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(9),
	datad => VCC,
	cin => \inst3|Add0~17\,
	combout => \inst3|Add0~18_combout\,
	cout => \inst3|Add0~19\);

-- Location: LCCOMB_X114_Y31_N24
\inst3|s_debounceCnt~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~14_combout\ = (\inst3|s_debounceCnt[18]~0_combout\ & ((\inst3|Add0~18_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~18_combout\,
	datad => \inst3|s_debounceCnt[18]~0_combout\,
	combout => \inst3|s_debounceCnt~14_combout\);

-- Location: FF_X114_Y31_N25
\inst3|s_debounceCnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~14_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(9));

-- Location: LCCOMB_X112_Y32_N30
\inst3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~20_combout\ = (\inst3|s_debounceCnt\(10) & ((GND) # (!\inst3|Add0~19\))) # (!\inst3|s_debounceCnt\(10) & (\inst3|Add0~19\ $ (GND)))
-- \inst3|Add0~21\ = CARRY((\inst3|s_debounceCnt\(10)) # (!\inst3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(10),
	datad => VCC,
	cin => \inst3|Add0~19\,
	combout => \inst3|Add0~20_combout\,
	cout => \inst3|Add0~21\);

-- Location: LCCOMB_X114_Y31_N30
\inst3|s_debounceCnt~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~15_combout\ = (\inst3|Add0~20_combout\ & \inst3|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~20_combout\,
	datad => \inst3|s_debounceCnt[18]~4_combout\,
	combout => \inst3|s_debounceCnt~15_combout\);

-- Location: FF_X114_Y31_N31
\inst3|s_debounceCnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~15_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(10));

-- Location: LCCOMB_X112_Y31_N0
\inst3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~22_combout\ = (\inst3|s_debounceCnt\(11) & (\inst3|Add0~21\ & VCC)) # (!\inst3|s_debounceCnt\(11) & (!\inst3|Add0~21\))
-- \inst3|Add0~23\ = CARRY((!\inst3|s_debounceCnt\(11) & !\inst3|Add0~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(11),
	datad => VCC,
	cin => \inst3|Add0~21\,
	combout => \inst3|Add0~22_combout\,
	cout => \inst3|Add0~23\);

-- Location: LCCOMB_X114_Y31_N22
\inst3|s_debounceCnt~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~16_combout\ = (\inst3|s_debounceCnt[18]~0_combout\ & ((\inst3|Add0~22_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~22_combout\,
	datad => \inst3|s_debounceCnt[18]~0_combout\,
	combout => \inst3|s_debounceCnt~16_combout\);

-- Location: FF_X114_Y31_N23
\inst3|s_debounceCnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~16_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(11));

-- Location: LCCOMB_X112_Y31_N2
\inst3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~24_combout\ = (\inst3|s_debounceCnt\(12) & ((GND) # (!\inst3|Add0~23\))) # (!\inst3|s_debounceCnt\(12) & (\inst3|Add0~23\ $ (GND)))
-- \inst3|Add0~25\ = CARRY((\inst3|s_debounceCnt\(12)) # (!\inst3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(12),
	datad => VCC,
	cin => \inst3|Add0~23\,
	combout => \inst3|Add0~24_combout\,
	cout => \inst3|Add0~25\);

-- Location: LCCOMB_X112_Y31_N26
\inst3|s_debounceCnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~8_combout\ = (\inst3|Add0~24_combout\ & \inst3|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~24_combout\,
	datad => \inst3|s_debounceCnt[18]~4_combout\,
	combout => \inst3|s_debounceCnt~8_combout\);

-- Location: FF_X112_Y31_N27
\inst3|s_debounceCnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~8_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(12));

-- Location: LCCOMB_X112_Y31_N4
\inst3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~26_combout\ = (\inst3|s_debounceCnt\(13) & (\inst3|Add0~25\ & VCC)) # (!\inst3|s_debounceCnt\(13) & (!\inst3|Add0~25\))
-- \inst3|Add0~27\ = CARRY((!\inst3|s_debounceCnt\(13) & !\inst3|Add0~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(13),
	datad => VCC,
	cin => \inst3|Add0~25\,
	combout => \inst3|Add0~26_combout\,
	cout => \inst3|Add0~27\);

-- Location: LCCOMB_X113_Y31_N18
\inst3|s_debounceCnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~9_combout\ = (\inst3|Add0~26_combout\ & \inst3|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~26_combout\,
	datad => \inst3|s_debounceCnt[18]~4_combout\,
	combout => \inst3|s_debounceCnt~9_combout\);

-- Location: FF_X113_Y31_N19
\inst3|s_debounceCnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~9_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(13));

-- Location: LCCOMB_X112_Y31_N6
\inst3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~28_combout\ = (\inst3|s_debounceCnt\(14) & ((GND) # (!\inst3|Add0~27\))) # (!\inst3|s_debounceCnt\(14) & (\inst3|Add0~27\ $ (GND)))
-- \inst3|Add0~29\ = CARRY((\inst3|s_debounceCnt\(14)) # (!\inst3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(14),
	datad => VCC,
	cin => \inst3|Add0~27\,
	combout => \inst3|Add0~28_combout\,
	cout => \inst3|Add0~29\);

-- Location: LCCOMB_X114_Y31_N8
\inst3|s_debounceCnt~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~17_combout\ = (\inst3|s_debounceCnt[18]~0_combout\ & ((\inst3|Add0~28_combout\) # (!\inst3|s_previousIn~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|Add0~28_combout\,
	datad => \inst3|s_debounceCnt[18]~0_combout\,
	combout => \inst3|s_debounceCnt~17_combout\);

-- Location: FF_X114_Y31_N9
\inst3|s_debounceCnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~17_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(14));

-- Location: LCCOMB_X112_Y31_N8
\inst3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~30_combout\ = (\inst3|s_debounceCnt\(15) & (\inst3|Add0~29\ & VCC)) # (!\inst3|s_debounceCnt\(15) & (!\inst3|Add0~29\))
-- \inst3|Add0~31\ = CARRY((!\inst3|s_debounceCnt\(15) & !\inst3|Add0~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(15),
	datad => VCC,
	cin => \inst3|Add0~29\,
	combout => \inst3|Add0~30_combout\,
	cout => \inst3|Add0~31\);

-- Location: LCCOMB_X113_Y31_N14
\inst3|s_debounceCnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~5_combout\ = (\inst3|s_debounceCnt[18]~4_combout\ & \inst3|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt[18]~4_combout\,
	datad => \inst3|Add0~30_combout\,
	combout => \inst3|s_debounceCnt~5_combout\);

-- Location: FF_X113_Y31_N15
\inst3|s_debounceCnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~5_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(15));

-- Location: LCCOMB_X112_Y31_N10
\inst3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~32_combout\ = (\inst3|s_debounceCnt\(16) & ((GND) # (!\inst3|Add0~31\))) # (!\inst3|s_debounceCnt\(16) & (\inst3|Add0~31\ $ (GND)))
-- \inst3|Add0~33\ = CARRY((\inst3|s_debounceCnt\(16)) # (!\inst3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(16),
	datad => VCC,
	cin => \inst3|Add0~31\,
	combout => \inst3|Add0~32_combout\,
	cout => \inst3|Add0~33\);

-- Location: LCCOMB_X112_Y31_N28
\inst3|s_debounceCnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~6_combout\ = (\inst3|Add0~32_combout\ & \inst3|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~32_combout\,
	datad => \inst3|s_debounceCnt[18]~4_combout\,
	combout => \inst3|s_debounceCnt~6_combout\);

-- Location: FF_X112_Y31_N29
\inst3|s_debounceCnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~6_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(16));

-- Location: LCCOMB_X112_Y31_N12
\inst3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~34_combout\ = (\inst3|s_debounceCnt\(17) & (\inst3|Add0~33\ & VCC)) # (!\inst3|s_debounceCnt\(17) & (!\inst3|Add0~33\))
-- \inst3|Add0~35\ = CARRY((!\inst3|s_debounceCnt\(17) & !\inst3|Add0~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(17),
	datad => VCC,
	cin => \inst3|Add0~33\,
	combout => \inst3|Add0~34_combout\,
	cout => \inst3|Add0~35\);

-- Location: LCCOMB_X113_Y31_N30
\inst3|s_debounceCnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~7_combout\ = (\inst3|s_debounceCnt[18]~4_combout\ & \inst3|Add0~34_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt[18]~4_combout\,
	datad => \inst3|Add0~34_combout\,
	combout => \inst3|s_debounceCnt~7_combout\);

-- Location: FF_X113_Y31_N31
\inst3|s_debounceCnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~7_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(17));

-- Location: LCCOMB_X112_Y31_N14
\inst3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~36_combout\ = (\inst3|s_debounceCnt\(18) & ((GND) # (!\inst3|Add0~35\))) # (!\inst3|s_debounceCnt\(18) & (\inst3|Add0~35\ $ (GND)))
-- \inst3|Add0~37\ = CARRY((\inst3|s_debounceCnt\(18)) # (!\inst3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(18),
	datad => VCC,
	cin => \inst3|Add0~35\,
	combout => \inst3|Add0~36_combout\,
	cout => \inst3|Add0~37\);

-- Location: LCCOMB_X114_Y31_N14
\inst3|s_debounceCnt[18]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[18]~18_combout\ = (\inst3|s_debounceCnt[18]~0_combout\ & (\inst3|s_debounceCnt[18]~3_combout\ & ((\inst3|Add0~36_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[18]~0_combout\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[18]~3_combout\,
	datad => \inst3|Add0~36_combout\,
	combout => \inst3|s_debounceCnt[18]~18_combout\);

-- Location: FF_X114_Y31_N15
\inst3|s_debounceCnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[18]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(18));

-- Location: LCCOMB_X112_Y31_N16
\inst3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~38_combout\ = (\inst3|s_debounceCnt\(19) & (\inst3|Add0~37\ & VCC)) # (!\inst3|s_debounceCnt\(19) & (!\inst3|Add0~37\))
-- \inst3|Add0~39\ = CARRY((!\inst3|s_debounceCnt\(19) & !\inst3|Add0~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(19),
	datad => VCC,
	cin => \inst3|Add0~37\,
	combout => \inst3|Add0~38_combout\,
	cout => \inst3|Add0~39\);

-- Location: LCCOMB_X114_Y31_N12
\inst3|s_debounceCnt[19]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[19]~19_combout\ = (\inst3|s_debounceCnt[18]~0_combout\ & (\inst3|s_debounceCnt[18]~3_combout\ & ((\inst3|Add0~38_combout\) # (!\inst3|s_previousIn~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[18]~0_combout\,
	datab => \inst3|s_previousIn~q\,
	datac => \inst3|s_debounceCnt[18]~3_combout\,
	datad => \inst3|Add0~38_combout\,
	combout => \inst3|s_debounceCnt[19]~19_combout\);

-- Location: FF_X114_Y31_N13
\inst3|s_debounceCnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[19]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(19));

-- Location: LCCOMB_X114_Y31_N10
\inst3|s_pulsedOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~3_combout\ = (!\inst3|s_debounceCnt\(11) & (!\inst3|s_debounceCnt\(18) & (!\inst3|s_debounceCnt\(14) & !\inst3|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(11),
	datab => \inst3|s_debounceCnt\(18),
	datac => \inst3|s_debounceCnt\(14),
	datad => \inst3|s_debounceCnt\(19),
	combout => \inst3|s_pulsedOut~3_combout\);

-- Location: LCCOMB_X114_Y31_N16
\inst3|s_pulsedOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~2_combout\ = (!\inst3|s_debounceCnt\(10) & (!\inst3|s_debounceCnt\(7) & (!\inst3|s_debounceCnt\(8) & !\inst3|s_debounceCnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(10),
	datab => \inst3|s_debounceCnt\(7),
	datac => \inst3|s_debounceCnt\(8),
	datad => \inst3|s_debounceCnt\(9),
	combout => \inst3|s_pulsedOut~2_combout\);

-- Location: LCCOMB_X114_Y31_N4
\inst3|s_pulsedOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~0_combout\ = (!\inst3|s_debounceCnt\(15) & (!\inst3|s_debounceCnt\(17) & (!\inst3|s_debounceCnt\(6) & !\inst3|s_debounceCnt\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(15),
	datab => \inst3|s_debounceCnt\(17),
	datac => \inst3|s_debounceCnt\(6),
	datad => \inst3|s_debounceCnt\(16),
	combout => \inst3|s_pulsedOut~0_combout\);

-- Location: LCCOMB_X112_Y31_N18
\inst3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~40_combout\ = (\inst3|s_debounceCnt\(20) & ((GND) # (!\inst3|Add0~39\))) # (!\inst3|s_debounceCnt\(20) & (\inst3|Add0~39\ $ (GND)))
-- \inst3|Add0~41\ = CARRY((\inst3|s_debounceCnt\(20)) # (!\inst3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(20),
	datad => VCC,
	cin => \inst3|Add0~39\,
	combout => \inst3|Add0~40_combout\,
	cout => \inst3|Add0~41\);

-- Location: LCCOMB_X113_Y31_N16
\inst3|s_debounceCnt[20]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[20]~10_combout\ = (\inst3|s_debounceCnt[18]~3_combout\ & (\inst3|s_debounceCnt[18]~4_combout\ & \inst3|Add0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt[18]~3_combout\,
	datac => \inst3|s_debounceCnt[18]~4_combout\,
	datad => \inst3|Add0~40_combout\,
	combout => \inst3|s_debounceCnt[20]~10_combout\);

-- Location: FF_X113_Y31_N17
\inst3|s_debounceCnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[20]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(20));

-- Location: LCCOMB_X114_Y31_N18
\inst3|s_pulsedOut~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~1_combout\ = (!\inst3|s_debounceCnt\(20) & (!\inst3|s_debounceCnt\(21) & (!\inst3|s_debounceCnt\(12) & !\inst3|s_debounceCnt\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(20),
	datab => \inst3|s_debounceCnt\(21),
	datac => \inst3|s_debounceCnt\(12),
	datad => \inst3|s_debounceCnt\(13),
	combout => \inst3|s_pulsedOut~1_combout\);

-- Location: LCCOMB_X114_Y31_N28
\inst3|s_pulsedOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~4_combout\ = (\inst3|s_pulsedOut~3_combout\ & (\inst3|s_pulsedOut~2_combout\ & (\inst3|s_pulsedOut~0_combout\ & \inst3|s_pulsedOut~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_pulsedOut~3_combout\,
	datab => \inst3|s_pulsedOut~2_combout\,
	datac => \inst3|s_pulsedOut~0_combout\,
	datad => \inst3|s_pulsedOut~1_combout\,
	combout => \inst3|s_pulsedOut~4_combout\);

-- Location: LCCOMB_X113_Y31_N0
\inst3|s_debounceCnt[18]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[18]~2_combout\ = (\inst3|s_debounceCnt\(5)) # (((\inst3|s_debounceCnt\(0)) # (!\inst3|s_pulsedOut~4_combout\)) # (!\inst3|s_pulsedOut~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datab => \inst3|s_pulsedOut~5_combout\,
	datac => \inst3|s_debounceCnt\(0),
	datad => \inst3|s_pulsedOut~4_combout\,
	combout => \inst3|s_debounceCnt[18]~2_combout\);

-- Location: LCCOMB_X113_Y31_N22
\inst3|s_debounceCnt[18]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[18]~3_combout\ = ((\inst3|s_debounceCnt\(22)) # ((\inst3|s_debounceCnt[18]~2_combout\) # (!\inst3|s_previousIn~q\))) # (!\inst3|s_dirtyIn~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|s_debounceCnt[18]~2_combout\,
	combout => \inst3|s_debounceCnt[18]~3_combout\);

-- Location: LCCOMB_X112_Y31_N20
\inst3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~42_combout\ = (\inst3|s_debounceCnt\(21) & (\inst3|Add0~41\ & VCC)) # (!\inst3|s_debounceCnt\(21) & (!\inst3|Add0~41\))
-- \inst3|Add0~43\ = CARRY((!\inst3|s_debounceCnt\(21) & !\inst3|Add0~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(21),
	datad => VCC,
	cin => \inst3|Add0~41\,
	combout => \inst3|Add0~42_combout\,
	cout => \inst3|Add0~43\);

-- Location: LCCOMB_X112_Y31_N24
\inst3|s_debounceCnt[21]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[21]~11_combout\ = (\inst3|s_debounceCnt[18]~4_combout\ & (\inst3|s_debounceCnt[18]~3_combout\ & \inst3|Add0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt[18]~4_combout\,
	datab => \inst3|s_debounceCnt[18]~3_combout\,
	datad => \inst3|Add0~42_combout\,
	combout => \inst3|s_debounceCnt[21]~11_combout\);

-- Location: FF_X112_Y31_N25
\inst3|s_debounceCnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[21]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(21));

-- Location: LCCOMB_X114_Y31_N6
\inst3|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_combout\ = (\inst3|s_debounceCnt\(8) & (\inst3|s_debounceCnt\(14) & (\inst3|s_debounceCnt\(18) & \inst3|s_debounceCnt\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(8),
	datab => \inst3|s_debounceCnt\(14),
	datac => \inst3|s_debounceCnt\(18),
	datad => \inst3|s_debounceCnt\(19),
	combout => \inst3|LessThan0~3_combout\);

-- Location: LCCOMB_X114_Y31_N20
\inst3|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~4_combout\ = (\inst3|s_debounceCnt\(9) & (\inst3|s_debounceCnt\(11) & \inst3|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(9),
	datac => \inst3|s_debounceCnt\(11),
	datad => \inst3|LessThan0~3_combout\,
	combout => \inst3|LessThan0~4_combout\);

-- Location: LCCOMB_X113_Y31_N4
\inst3|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_combout\ = (\inst3|s_debounceCnt\(6) & ((\inst3|s_debounceCnt\(5)) # ((\inst3|s_debounceCnt\(0)) # (!\inst3|s_pulsedOut~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datab => \inst3|s_debounceCnt\(0),
	datac => \inst3|s_debounceCnt\(6),
	datad => \inst3|s_pulsedOut~5_combout\,
	combout => \inst3|LessThan0~5_combout\);

-- Location: LCCOMB_X113_Y31_N10
\inst3|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~0_combout\ = (\inst3|s_debounceCnt\(12)) # ((\inst3|s_debounceCnt\(13)) # ((\inst3|s_debounceCnt\(10) & \inst3|s_debounceCnt\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(12),
	datab => \inst3|s_debounceCnt\(13),
	datac => \inst3|s_debounceCnt\(10),
	datad => \inst3|s_debounceCnt\(11),
	combout => \inst3|LessThan0~0_combout\);

-- Location: LCCOMB_X113_Y31_N28
\inst3|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_combout\ = (\inst3|s_debounceCnt\(16)) # ((\inst3|s_debounceCnt\(15)) # ((\inst3|s_debounceCnt\(14) & \inst3|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(16),
	datab => \inst3|s_debounceCnt\(15),
	datac => \inst3|s_debounceCnt\(14),
	datad => \inst3|LessThan0~0_combout\,
	combout => \inst3|LessThan0~1_combout\);

-- Location: LCCOMB_X113_Y31_N20
\inst3|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~2_combout\ = (\inst3|s_debounceCnt\(18) & (\inst3|s_debounceCnt\(19) & ((\inst3|s_debounceCnt\(17)) # (\inst3|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(17),
	datab => \inst3|s_debounceCnt\(18),
	datac => \inst3|s_debounceCnt\(19),
	datad => \inst3|LessThan0~1_combout\,
	combout => \inst3|LessThan0~2_combout\);

-- Location: LCCOMB_X113_Y31_N12
\inst3|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~6_combout\ = (\inst3|LessThan0~2_combout\) # ((\inst3|LessThan0~4_combout\ & ((\inst3|s_debounceCnt\(7)) # (\inst3|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|LessThan0~4_combout\,
	datab => \inst3|s_debounceCnt\(7),
	datac => \inst3|LessThan0~5_combout\,
	datad => \inst3|LessThan0~2_combout\,
	combout => \inst3|LessThan0~6_combout\);

-- Location: LCCOMB_X113_Y31_N6
\inst3|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~7_combout\ = (\inst3|s_debounceCnt\(21)) # ((\inst3|s_debounceCnt\(20)) # (\inst3|LessThan0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(21),
	datac => \inst3|s_debounceCnt\(20),
	datad => \inst3|LessThan0~6_combout\,
	combout => \inst3|LessThan0~7_combout\);

-- Location: LCCOMB_X113_Y31_N8
\inst3|s_debounceCnt[18]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[18]~0_combout\ = (\inst3|s_dirtyIn~q\ & ((!\inst3|LessThan0~7_combout\) # (!\inst3|s_debounceCnt\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_dirtyIn~q\,
	datad => \inst3|LessThan0~7_combout\,
	combout => \inst3|s_debounceCnt[18]~0_combout\);

-- Location: LCCOMB_X111_Y31_N4
\inst3|s_debounceCnt[22]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~25_combout\ = (\inst3|s_dirtyIn~q\ & ((\inst3|s_debounceCnt\(22) & ((!\inst3|LessThan0~7_combout\))) # (!\inst3|s_debounceCnt\(22) & (\inst3|s_debounceCnt[18]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(22),
	datab => \inst3|s_dirtyIn~q\,
	datac => \inst3|s_debounceCnt[18]~2_combout\,
	datad => \inst3|LessThan0~7_combout\,
	combout => \inst3|s_debounceCnt[22]~25_combout\);

-- Location: LCCOMB_X112_Y31_N22
\inst3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~44_combout\ = \inst3|Add0~43\ $ (\inst3|s_debounceCnt\(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|s_debounceCnt\(22),
	cin => \inst3|Add0~43\,
	combout => \inst3|Add0~44_combout\);

-- Location: LCCOMB_X111_Y31_N24
\inst3|s_debounceCnt[22]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[22]~26_combout\ = (\inst3|s_previousIn~q\ & (((\inst3|s_debounceCnt[22]~25_combout\ & \inst3|Add0~44_combout\)))) # (!\inst3|s_previousIn~q\ & (\inst3|s_debounceCnt[18]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_debounceCnt[18]~0_combout\,
	datac => \inst3|s_debounceCnt[22]~25_combout\,
	datad => \inst3|Add0~44_combout\,
	combout => \inst3|s_debounceCnt[22]~26_combout\);

-- Location: FF_X111_Y31_N25
\inst3|s_debounceCnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt[22]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(22));

-- Location: LCCOMB_X113_Y31_N2
\inst3|s_debounceCnt[18]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt[18]~4_combout\ = (\inst3|s_dirtyIn~q\ & (\inst3|s_previousIn~q\ & ((!\inst3|LessThan0~7_combout\) # (!\inst3|s_debounceCnt\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_dirtyIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_previousIn~q\,
	datad => \inst3|LessThan0~7_combout\,
	combout => \inst3|s_debounceCnt[18]~4_combout\);

-- Location: LCCOMB_X112_Y31_N30
\inst3|s_debounceCnt~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~24_combout\ = (\inst3|Add0~0_combout\ & \inst3|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~0_combout\,
	datad => \inst3|s_debounceCnt[18]~4_combout\,
	combout => \inst3|s_debounceCnt~24_combout\);

-- Location: FF_X112_Y31_N31
\inst3|s_debounceCnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~24_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(0));

-- Location: LCCOMB_X112_Y32_N12
\inst3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst3|s_debounceCnt\(1) & (\inst3|Add0~1\ & VCC)) # (!\inst3|s_debounceCnt\(1) & (!\inst3|Add0~1\))
-- \inst3|Add0~3\ = CARRY((!\inst3|s_debounceCnt\(1) & !\inst3|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(1),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X112_Y32_N0
\inst3|s_debounceCnt~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~20_combout\ = (\inst3|Add0~2_combout\ & \inst3|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~2_combout\,
	datad => \inst3|s_debounceCnt[18]~4_combout\,
	combout => \inst3|s_debounceCnt~20_combout\);

-- Location: FF_X112_Y32_N1
\inst3|s_debounceCnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~20_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(1));

-- Location: LCCOMB_X112_Y32_N14
\inst3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst3|s_debounceCnt\(2) & ((GND) # (!\inst3|Add0~3\))) # (!\inst3|s_debounceCnt\(2) & (\inst3|Add0~3\ $ (GND)))
-- \inst3|Add0~5\ = CARRY((\inst3|s_debounceCnt\(2)) # (!\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(2),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X112_Y32_N2
\inst3|s_debounceCnt~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~21_combout\ = (\inst3|Add0~4_combout\ & \inst3|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~4_combout\,
	datad => \inst3|s_debounceCnt[18]~4_combout\,
	combout => \inst3|s_debounceCnt~21_combout\);

-- Location: FF_X112_Y32_N3
\inst3|s_debounceCnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~21_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(2));

-- Location: LCCOMB_X112_Y32_N16
\inst3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst3|s_debounceCnt\(3) & (\inst3|Add0~5\ & VCC)) # (!\inst3|s_debounceCnt\(3) & (!\inst3|Add0~5\))
-- \inst3|Add0~7\ = CARRY((!\inst3|s_debounceCnt\(3) & !\inst3|Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_debounceCnt\(3),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X112_Y32_N4
\inst3|s_debounceCnt~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~22_combout\ = (\inst3|Add0~6_combout\ & \inst3|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~6_combout\,
	datad => \inst3|s_debounceCnt[18]~4_combout\,
	combout => \inst3|s_debounceCnt~22_combout\);

-- Location: FF_X112_Y32_N5
\inst3|s_debounceCnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~22_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(3));

-- Location: LCCOMB_X112_Y32_N18
\inst3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst3|s_debounceCnt\(4) & ((GND) # (!\inst3|Add0~7\))) # (!\inst3|s_debounceCnt\(4) & (\inst3|Add0~7\ $ (GND)))
-- \inst3|Add0~9\ = CARRY((\inst3|s_debounceCnt\(4)) # (!\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(4),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X112_Y32_N6
\inst3|s_debounceCnt~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~23_combout\ = (\inst3|Add0~8_combout\ & \inst3|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add0~8_combout\,
	datad => \inst3|s_debounceCnt[18]~4_combout\,
	combout => \inst3|s_debounceCnt~23_combout\);

-- Location: FF_X112_Y32_N7
\inst3|s_debounceCnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~23_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(4));

-- Location: LCCOMB_X113_Y31_N24
\inst3|s_debounceCnt~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_debounceCnt~27_combout\ = (\inst3|Add0~10_combout\ & \inst3|s_debounceCnt[18]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add0~10_combout\,
	datad => \inst3|s_debounceCnt[18]~4_combout\,
	combout => \inst3|s_debounceCnt~27_combout\);

-- Location: FF_X113_Y31_N25
\inst3|s_debounceCnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_debounceCnt~27_combout\,
	ena => \inst3|s_debounceCnt[18]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_debounceCnt\(5));

-- Location: LCCOMB_X111_Y31_N2
\inst3|s_pulsedOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~6_combout\ = (\inst3|s_previousIn~q\ & (!\inst3|s_debounceCnt\(22) & (\inst3|s_dirtyIn~q\ & \inst3|s_debounceCnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_previousIn~q\,
	datab => \inst3|s_debounceCnt\(22),
	datac => \inst3|s_dirtyIn~q\,
	datad => \inst3|s_debounceCnt\(0),
	combout => \inst3|s_pulsedOut~6_combout\);

-- Location: LCCOMB_X110_Y35_N0
\inst3|s_pulsedOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|s_pulsedOut~7_combout\ = (!\inst3|s_debounceCnt\(5) & (\inst3|s_pulsedOut~5_combout\ & (\inst3|s_pulsedOut~6_combout\ & \inst3|s_pulsedOut~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|s_debounceCnt\(5),
	datab => \inst3|s_pulsedOut~5_combout\,
	datac => \inst3|s_pulsedOut~6_combout\,
	datad => \inst3|s_pulsedOut~4_combout\,
	combout => \inst3|s_pulsedOut~7_combout\);

-- Location: FF_X110_Y35_N1
\inst3|s_pulsedOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst3|s_pulsedOut~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|s_pulsedOut~q\);

-- Location: LCCOMB_X111_Y35_N20
\inst|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector10~0_combout\ = (\inst4|s_pulsedOut~q\) # ((\inst3|s_pulsedOut~q\) # (\inst|s_currentState.initialState~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_pulsedOut~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst|s_currentState.initialState~q\,
	combout => \inst|Selector10~0_combout\);

-- Location: LCCOMB_X111_Y35_N30
\inst|s_nextState.initialState_138\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_nextState.initialState_138~combout\ = (GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & ((\inst|s_nextState.initialState_138~combout\))) # (!GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & (!\inst|Selector10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector10~0_combout\,
	datac => \inst|s_nextState.initialState_138~combout\,
	datad => \inst|s_currentState.finalState~clkctrl_outclk\,
	combout => \inst|s_nextState.initialState_138~combout\);

-- Location: LCCOMB_X111_Y35_N10
\inst|s_currentState~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~13_combout\ = (\KEY[0]~input_o\ & !\inst|s_nextState.initialState_138~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \inst|s_nextState.initialState_138~combout\,
	combout => \inst|s_currentState~13_combout\);

-- Location: FF_X111_Y35_N11
\inst|s_currentState.initialState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.initialState~q\);

-- Location: LCCOMB_X110_Y35_N6
\inst|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector8~0_combout\ = (\inst3|s_pulsedOut~q\ & (((!\inst|s_currentState.initialState~q\)))) # (!\inst3|s_pulsedOut~q\ & (\inst|s_currentState.State20~q\ & (!\inst4|s_pulsedOut~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_currentState.State20~q\,
	datab => \inst4|s_pulsedOut~q\,
	datac => \inst|s_currentState.initialState~q\,
	datad => \inst3|s_pulsedOut~q\,
	combout => \inst|Selector8~0_combout\);

-- Location: LCCOMB_X110_Y35_N30
\inst|s_nextState.State20_130\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_nextState.State20_130~combout\ = (GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & ((\inst|s_nextState.State20_130~combout\))) # (!GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & (\inst|Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector8~0_combout\,
	datac => \inst|s_nextState.State20_130~combout\,
	datad => \inst|s_currentState.finalState~clkctrl_outclk\,
	combout => \inst|s_nextState.State20_130~combout\);

-- Location: LCCOMB_X110_Y35_N2
\inst|s_currentState~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~12_combout\ = (\inst|s_nextState.State20_130~combout\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_nextState.State20_130~combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|s_currentState~12_combout\);

-- Location: FF_X110_Y35_N3
\inst|s_currentState.State20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.State20~q\);

-- Location: LCCOMB_X110_Y35_N16
\inst|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst3|s_pulsedOut~q\ & (((\inst|s_currentState.State20~q\)))) # (!\inst3|s_pulsedOut~q\ & (\inst|s_currentState.State40~q\ & ((!\inst4|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_currentState.State40~q\,
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst|s_currentState.State20~q\,
	datad => \inst4|s_pulsedOut~q\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCCOMB_X110_Y35_N8
\inst|s_nextState.State40_122\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_nextState.State40_122~combout\ = (GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & ((\inst|s_nextState.State40_122~combout\))) # (!GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & (\inst|Selector6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Selector6~0_combout\,
	datac => \inst|s_nextState.State40_122~combout\,
	datad => \inst|s_currentState.finalState~clkctrl_outclk\,
	combout => \inst|s_nextState.State40_122~combout\);

-- Location: LCCOMB_X110_Y35_N24
\inst|s_currentState~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~9_combout\ = (\inst|s_nextState.State40_122~combout\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_nextState.State40_122~combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|s_currentState~9_combout\);

-- Location: FF_X110_Y35_N25
\inst|s_currentState.State40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.State40~q\);

-- Location: LCCOMB_X110_Y35_N18
\inst|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (!\inst3|s_pulsedOut~q\ & ((\inst4|s_pulsedOut~q\ & ((!\inst|s_currentState.initialState~q\))) # (!\inst4|s_pulsedOut~q\ & (\inst|s_currentState.State5060~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_currentState.State5060~q\,
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst|s_currentState.initialState~q\,
	datad => \inst4|s_pulsedOut~q\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCCOMB_X110_Y35_N20
\inst|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector4~1_combout\ = (\inst|Selector4~0_combout\) # ((\inst3|s_pulsedOut~q\ & \inst|s_currentState.State40~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst|s_currentState.State40~q\,
	datad => \inst|Selector4~0_combout\,
	combout => \inst|Selector4~1_combout\);

-- Location: LCCOMB_X110_Y35_N26
\inst|s_nextState.State5060_114\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_nextState.State5060_114~combout\ = (GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & (\inst|s_nextState.State5060_114~combout\)) # (!GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & ((\inst|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_nextState.State5060_114~combout\,
	datac => \inst|s_currentState.finalState~clkctrl_outclk\,
	datad => \inst|Selector4~1_combout\,
	combout => \inst|s_nextState.State5060_114~combout\);

-- Location: LCCOMB_X110_Y35_N22
\inst|s_currentState~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~10_combout\ = (\inst|s_nextState.State5060_114~combout\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_nextState.State5060_114~combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|s_currentState~10_combout\);

-- Location: FF_X110_Y35_N23
\inst|s_currentState.State5060\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.State5060~q\);

-- Location: LCCOMB_X110_Y35_N10
\inst|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (!\inst3|s_pulsedOut~q\ & ((\inst4|s_pulsedOut~q\ & ((\inst|s_currentState.State20~q\))) # (!\inst4|s_pulsedOut~q\ & (\inst|s_currentState.State7080~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_currentState.State7080~q\,
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst|s_currentState.State20~q\,
	datad => \inst4|s_pulsedOut~q\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCCOMB_X110_Y35_N28
\inst|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector2~1_combout\ = (\inst|Selector2~0_combout\) # ((\inst3|s_pulsedOut~q\ & \inst|s_currentState.State5060~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst|s_currentState.State5060~q\,
	datad => \inst|Selector2~0_combout\,
	combout => \inst|Selector2~1_combout\);

-- Location: LCCOMB_X110_Y35_N4
\inst|s_nextState.State7080_106\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_nextState.State7080_106~combout\ = (GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & (\inst|s_nextState.State7080_106~combout\)) # (!GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & ((\inst|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|s_nextState.State7080_106~combout\,
	datac => \inst|s_currentState.finalState~clkctrl_outclk\,
	datad => \inst|Selector2~1_combout\,
	combout => \inst|s_nextState.State7080_106~combout\);

-- Location: LCCOMB_X110_Y35_N12
\inst|s_currentState~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~11_combout\ = (\inst|s_nextState.State7080_106~combout\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|s_nextState.State7080_106~combout\,
	datad => \KEY[0]~input_o\,
	combout => \inst|s_currentState~11_combout\);

-- Location: FF_X110_Y35_N13
\inst|s_currentState.State7080\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.State7080~q\);

-- Location: LCCOMB_X110_Y35_N14
\inst|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (!\inst3|s_pulsedOut~q\ & (\inst4|s_pulsedOut~q\ & ((\inst|s_currentState.State5060~q\) # (\inst|s_currentState.State40~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_currentState.State5060~q\,
	datab => \inst3|s_pulsedOut~q\,
	datac => \inst|s_currentState.State40~q\,
	datad => \inst4|s_pulsedOut~q\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCCOMB_X111_Y35_N28
\inst|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Selector1~1_combout\ = (\inst|Selector1~0_combout\) # ((\inst|s_currentState.State7080~q\ & ((\inst4|s_pulsedOut~q\) # (\inst3|s_pulsedOut~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|s_pulsedOut~q\,
	datab => \inst|s_currentState.State7080~q\,
	datac => \inst3|s_pulsedOut~q\,
	datad => \inst|Selector1~0_combout\,
	combout => \inst|Selector1~1_combout\);

-- Location: LCCOMB_X111_Y35_N26
\inst|s_nextState.finalState_98\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_nextState.finalState_98~combout\ = (GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & (\inst|s_nextState.finalState_98~combout\)) # (!GLOBAL(\inst|s_currentState.finalState~clkctrl_outclk\) & ((\inst|Selector1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|s_nextState.finalState_98~combout\,
	datac => \inst|s_currentState.finalState~clkctrl_outclk\,
	datad => \inst|Selector1~1_combout\,
	combout => \inst|s_nextState.finalState_98~combout\);

-- Location: LCCOMB_X111_Y35_N24
\inst|s_currentState~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|s_currentState~8_combout\ = (\KEY[0]~input_o\ & \inst|s_nextState.finalState_98~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \inst|s_nextState.finalState_98~combout\,
	combout => \inst|s_currentState~8_combout\);

-- Location: FF_X111_Y35_N25
\inst|s_currentState.finalState\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \inst|s_currentState~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|s_currentState.finalState~q\);

ww_LEDG(0) <= \LEDG[0]~output_o\;
END structure;


