LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY fullAdder IS 
	PORT(
		a, b, cIn:IN STD_LOGIC;
		cOut, sum:OUT STD_LOGIC);
END fullAdder;

ARCHITECTURE ARC_fullAdder OF fullAdder IS
BEGIN
	cOut <= ((a xor b) and cIn) or (a and b);
	sum <= ((a xor b) xor cIn);
END ARC_fullAdder;