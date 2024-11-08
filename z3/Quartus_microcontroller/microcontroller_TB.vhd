-------------------------------------------------------------------------------
--
-- Title       : Test Bench for microcontroller
-- Design      : proba
-- Author      : Microsoft
-- Company     : Microsoft
--
-------------------------------------------------------------------------------
--
-- File        : $DSN\src\TestBench\microcontroller_TB.vhd
-- Generated   : 12/22/2012, 10:32 AM
-- From        : $DSN\compile\microcontroller.vhd
-- By          : Active-HDL Built-in Test Bench Generator ver. 1.2s
--
-------------------------------------------------------------------------------
--
-- Description : Automatically generated Test Bench for microcontroller_tb
--
-------------------------------------------------------------------------------

library ieee;
use ieee.std_logic_1164.all;

-- Add your library and packages declaration here ...

entity microcontroller_tb is
end microcontroller_tb;

architecture TB_ARCHITECTURE of microcontroller_tb is
	-- Component declaration of the tested unit
	component microcontroller
		port(
			Taster : in std_logic;
			clk : in std_logic;
			reset : in std_logic;
			Int_code : in std_logic_vector(1 downto 0);
			PORT_IN : in std_logic_vector(7 downto 0);
			Seg0 : out std_logic_vector(7 downto 0);
			Seg1 : out std_logic_vector(7 downto 0);
			Seg2 : out std_logic_vector(7 downto 0);
			Seg3 : out std_logic_vector(7 downto 0) );
	end component;
	
	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal Taster : std_logic:='0';
	signal clk : std_logic:='0';
	signal reset : std_logic:='1';
	signal Int_code : std_logic_vector(1 downto 0):="00";
	signal PORT_IN : std_logic_vector(7 downto 0):=(others=>'0');
	-- Observed signals - signals mapped to the output ports of tested entity
	signal Seg0 : std_logic_vector(7 downto 0);
	signal Seg1 : std_logic_vector(7 downto 0);
	signal Seg2 : std_logic_vector(7 downto 0);
	signal Seg3 : std_logic_vector(7 downto 0);
	
	-- Add your code here ...
	signal ENDSIM: boolean:=false;
	constant CLK_PERIOD: time:=200 ns;
	
begin
	
	main: process is
	begin 		
		reset<='0';
		wait for 10ns;
		reset<='1';
		wait for 600*CLK_PERIOD;
		-- OPERAND 1
		PORT_IN<=x"05";
		Int_code<="00";
		wait for CLK_PERIOD;
		Taster<='1';
		wait for CLK_PERIOD;
		Taster<='0';
		wait for 50*CLK_PERIOD;
		-- OPERAND 2
		PORT_IN<=x"05";
		Int_code<="01";
		wait for CLK_PERIOD;
		Taster<='1';
		wait for CLK_PERIOD;
		Taster<='0';
		wait for 50*CLK_PERIOD;		
		-- DISPLAY OPERANDS 
		PORT_IN<=x"00";
		Int_code<="10";
		wait for CLK_PERIOD;
		Taster<='1';
		wait for CLK_PERIOD;
		Taster<='0'; 
		wait for 50*CLK_PERIOD;		
		-- START MULTIPLICATION and DISPLAY OPERANDS 
		PORT_IN<=x"00";
		Int_code<="11";
		wait for CLK_PERIOD;
		Taster<='1';
		wait for CLK_PERIOD;
		Taster<='0';
		wait for 1000*CLK_PERIOD;		
		ENDSIM<=true;
		wait;
	end process;	
	
	-- Unit Under Test port map
	UUT : microcontroller
	port map (
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
	
	CLK_GEN: process
	begin
		if ENDSIM=false 
			then
			CLK <= '0';
			wait for CLK_PERIOD/2;
			CLK <= '1';
			wait for CLK_PERIOD/2;
		else
			wait;
		end if;	
	end process;
	
end TB_ARCHITECTURE;



