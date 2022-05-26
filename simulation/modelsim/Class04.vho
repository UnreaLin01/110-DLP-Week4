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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/27/2022 00:27:08"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Class04 IS
    PORT (
	cIN : IN std_logic;
	a : IN std_logic_vector(4 DOWNTO 1);
	b : IN std_logic_vector(4 DOWNTO 1);
	sum : BUFFER std_logic_vector(4 DOWNTO 1);
	cOut : BUFFER std_logic
	);
END Class04;

-- Design Ports Information
-- sum[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cOut	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cIN	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_H7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Class04 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_cIN : std_logic;
SIGNAL ww_a : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_b : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_sum : std_logic_vector(4 DOWNTO 1);
SIGNAL ww_cOut : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \sum[4]~output_o\ : std_logic;
SIGNAL \cOut~output_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \cIN~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \Adders:1:Adder|sum~0_combout\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \Adders:1:Adder|cOut~0_combout\ : std_logic;
SIGNAL \Adders:2:Adder|sum~combout\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \Adders:2:Adder|cOut~0_combout\ : std_logic;
SIGNAL \Adders:3:Adder|sum~combout\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \Adders:3:Adder|cOut~0_combout\ : std_logic;
SIGNAL \Adders:4:Adder|sum~combout\ : std_logic;
SIGNAL \Adders:4:Adder|cOut~0_combout\ : std_logic;

BEGIN

ww_cIN <= cIN;
ww_a <= a;
ww_b <= b;
sum <= ww_sum;
cOut <= ww_cOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y20_N9
\sum[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adders:1:Adder|sum~0_combout\,
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\sum[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adders:2:Adder|sum~combout\,
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\sum[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adders:3:Adder|sum~combout\,
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\sum[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adders:4:Adder|sum~combout\,
	devoe => ww_devoe,
	o => \sum[4]~output_o\);

-- Location: IOOBUF_X0_Y24_N23
\cOut~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Adders:4:Adder|cOut~0_combout\,
	devoe => ww_devoe,
	o => \cOut~output_o\);

-- Location: IOIBUF_X0_Y24_N1
\b[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\cIN~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_cIN,
	o => \cIN~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\a[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: LCCOMB_X1_Y24_N8
\Adders:1:Adder|sum~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Adders:1:Adder|sum~0_combout\ = \b[1]~input_o\ $ (\cIN~input_o\ $ (\a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datac => \cIN~input_o\,
	datad => \a[1]~input_o\,
	combout => \Adders:1:Adder|sum~0_combout\);

-- Location: IOIBUF_X0_Y27_N1
\b[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\a[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: LCCOMB_X1_Y24_N10
\Adders:1:Adder|cOut~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Adders:1:Adder|cOut~0_combout\ = (\b[1]~input_o\ & ((\cIN~input_o\) # (\a[1]~input_o\))) # (!\b[1]~input_o\ & (\cIN~input_o\ & \a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datac => \cIN~input_o\,
	datad => \a[1]~input_o\,
	combout => \Adders:1:Adder|cOut~0_combout\);

-- Location: LCCOMB_X1_Y24_N12
\Adders:2:Adder|sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Adders:2:Adder|sum~combout\ = \b[2]~input_o\ $ (\a[2]~input_o\ $ (\Adders:1:Adder|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \Adders:1:Adder|cOut~0_combout\,
	combout => \Adders:2:Adder|sum~combout\);

-- Location: IOIBUF_X0_Y25_N22
\b[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X0_Y25_N15
\a[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: LCCOMB_X1_Y24_N6
\Adders:2:Adder|cOut~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Adders:2:Adder|cOut~0_combout\ = (\b[2]~input_o\ & ((\a[2]~input_o\) # (\Adders:1:Adder|cOut~0_combout\))) # (!\b[2]~input_o\ & (\a[2]~input_o\ & \Adders:1:Adder|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datac => \a[2]~input_o\,
	datad => \Adders:1:Adder|cOut~0_combout\,
	combout => \Adders:2:Adder|cOut~0_combout\);

-- Location: LCCOMB_X1_Y24_N16
\Adders:3:Adder|sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Adders:3:Adder|sum~combout\ = \b[3]~input_o\ $ (\a[3]~input_o\ $ (\Adders:2:Adder|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \a[3]~input_o\,
	datad => \Adders:2:Adder|cOut~0_combout\,
	combout => \Adders:3:Adder|sum~combout\);

-- Location: IOIBUF_X0_Y23_N8
\b[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X0_Y26_N8
\a[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: LCCOMB_X1_Y24_N2
\Adders:3:Adder|cOut~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Adders:3:Adder|cOut~0_combout\ = (\b[3]~input_o\ & ((\a[3]~input_o\) # (\Adders:2:Adder|cOut~0_combout\))) # (!\b[3]~input_o\ & (\a[3]~input_o\ & \Adders:2:Adder|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b[3]~input_o\,
	datac => \a[3]~input_o\,
	datad => \Adders:2:Adder|cOut~0_combout\,
	combout => \Adders:3:Adder|cOut~0_combout\);

-- Location: LCCOMB_X1_Y24_N4
\Adders:4:Adder|sum\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Adders:4:Adder|sum~combout\ = \b[4]~input_o\ $ (\a[4]~input_o\ $ (\Adders:3:Adder|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datac => \a[4]~input_o\,
	datad => \Adders:3:Adder|cOut~0_combout\,
	combout => \Adders:4:Adder|sum~combout\);

-- Location: LCCOMB_X1_Y24_N14
\Adders:4:Adder|cOut~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Adders:4:Adder|cOut~0_combout\ = (\b[4]~input_o\ & ((\a[4]~input_o\) # (\Adders:3:Adder|cOut~0_combout\))) # (!\b[4]~input_o\ & (\a[4]~input_o\ & \Adders:3:Adder|cOut~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datac => \a[4]~input_o\,
	datad => \Adders:3:Adder|cOut~0_combout\,
	combout => \Adders:4:Adder|cOut~0_combout\);

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_sum(4) <= \sum[4]~output_o\;

ww_cOut <= \cOut~output_o\;
END structure;


