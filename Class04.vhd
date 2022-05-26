--Taipei Tech Electronic Engineering Dep.
--110360120 林冠羽
--110360119 黃俊霖
--110360134 楊錦坤
--110360155 羅寶娜

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Class04 IS
	GENERIC(bits:INTEGER:=4);
	PORT(
		cIN:IN STD_LOGIC;
		a, b:IN STD_LOGIC_VECTOR(bits downto 1);
		sum:OUT STD_LOGIC_VECTOR(bits downto 1);
		cOut:OUT STD_LOGIC);
END Class04;

ARCHITECTURE ARC_Class04 OF Class04 IS
	COMPONENT fullAdder
		PORT(
		a, b, cIn:IN STD_LOGIC;
		cOut, sum:OUT STD_LOGIC);
	END COMPONENT;
	SIGNAL c: STD_LOGIC_VECTOR(bits downto 0);
BEGIN
	c(0) <= cIn;
	Adders:
	FOR i IN 1 to bits GENERATE
		Adder: fullAdder PORT MAP(a(i), b(i), c(i-1), c(i), sum(i));
	END GENERATE;
	cOut <=c (bits);
END ARC_Class04;

