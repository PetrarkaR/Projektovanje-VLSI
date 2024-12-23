LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY microcontroller_tb IS
END microcontroller_tb;

ARCHITECTURE TB_ARCHITECTURE OF microcontroller_tb IS

	COMPONENT microcontroller
		PORT (
			Taster : IN STD_LOGIC;
			clk : IN STD_LOGIC;
			reset : IN STD_LOGIC;
			Int_code : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
			PORT_IN : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			Seg0 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			Seg1 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			Seg2 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			Seg3 : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	SIGNAL Taster : STD_LOGIC := '0';
	SIGNAL clk : STD_LOGIC := '0';
	SIGNAL reset : STD_LOGIC := '0';
	SIGNAL Int_code : STD_LOGIC_VECTOR(1 DOWNTO 0) := "00";
	SIGNAL PORT_IN : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');
	-- Observed signals - signals mapped to the output ports of tested entity
	SIGNAL Seg0 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL Seg1 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL Seg2 : STD_LOGIC_VECTOR(7 DOWNTO 0);
	SIGNAL Seg3 : STD_LOGIC_VECTOR(7 DOWNTO 0);

	-- Add your code here ...
	SIGNAL ENDSIM : BOOLEAN := false;
	CONSTANT CLK_PERIOD : TIME := 200 ns;

BEGIN

	main : PROCESS IS
	BEGIN

		reset <= '1';
		WAIT FOR 10 ns;
		reset <= '0';
		WAIT FOR 600 * CLK_PERIOD;
		-- OPERAND 1
		PORT_IN <= x"06";
		Int_code <= "00";
		WAIT FOR CLK_PERIOD;
		Taster <= '1';
		WAIT FOR CLK_PERIOD;
		Taster <= '0';
		WAIT FOR 50 * CLK_PERIOD;
		-- OPERAND 2
		PORT_IN <= x"10";
		Int_code <= "01";
		WAIT FOR CLK_PERIOD;
		Taster <= '1';
		WAIT FOR CLK_PERIOD;
		Taster <= '0';
		WAIT FOR 50 * CLK_PERIOD;
		-- DISPLAY OPERANDS 
		PORT_IN <= x"00";
		Int_code <= "10";
		WAIT FOR CLK_PERIOD;
		Taster <= '1';
		WAIT FOR CLK_PERIOD;
		Taster <= '0';
		WAIT FOR 50 * CLK_PERIOD;

		-- START MULTIPLICATION and DISPLAY OPERANDS 
		PORT_IN <= x"00";
		Int_code <= "11";
		WAIT FOR CLK_PERIOD;
		Taster <= '1';
		WAIT FOR CLK_PERIOD;
		Taster <= '0';
		WAIT FOR 7000 * CLK_PERIOD;

		ENDSIM <= true;
		WAIT;
	END PROCESS;

	-- Unit Under Test port map
	UUT : microcontroller
	PORT MAP(
		Taster => Taster,
		clk => clk,
		reset => reset,
		Int_code => Int_code,
		PORT_IN => PORT_IN,
		Seg0 => Seg0,
		Seg1 => Seg1,
		Seg2 => Seg2,
		Seg3 => Seg3
	);

	-- Add your stimulus here ...  

	CLK_GEN : PROCESS
	BEGIN
		IF ENDSIM = false
			THEN
			CLK <= '0';
			WAIT FOR CLK_PERIOD/2;
			CLK <= '1';
			WAIT FOR CLK_PERIOD/2;
		ELSE
			WAIT;
		END IF;
	END PROCESS;

END TB_ARCHITECTURE;

CONFIGURATION TESTBENCH_FOR_microcontroller OF microcontroller_tb IS
	FOR TB_ARCHITECTURE
		FOR UUT : microcontroller
			USE ENTITY work.microcontroller(microcontroller);
		END FOR;
	END FOR;
END TESTBENCH_FOR_microcontroller;