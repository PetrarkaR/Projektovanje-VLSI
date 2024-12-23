LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE work.DEFS.ALL;

ENTITY ALU IS
	PORT (
		acc_bus, load_acc, reset, clk : IN STD_LOGIC;
		sel_op : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
		data_bus : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		flag, zero : OUT STD_LOGIC);
END ALU;

ARCHITECTURE ALU OF ALU IS
	SIGNAL acc : STD_LOGIC_VECTOR(8 DOWNTO 0);
	CONSTANT allzero : STD_LOGIC_VECTOR(7 DOWNTO 0) := (OTHERS => '0');

BEGIN
	PROCESS (clk, reset) IS
	BEGIN
		IF (reset = '1') THEN
			acc <= (OTHERS => '0');
		ELSIF (clk'event AND clk = '1') THEN
			IF load_acc = '1' THEN
				CASE sel_op IS
					WHEN load => acc <= acc(8) & data_bus(7 DOWNTO 0); -- operacija LOAD
					WHEN setf => acc(8) <= '1'; -- operacija SET FLAG
					WHEN clrf => acc(8) <= '0'; -- operacija CLR FLAG
					WHEN add => acc(8 DOWNTO 0) <= ('0' & acc(7 DOWNTO 0)) + ('0' & data_bus(7 DOWNTO 0));-- operacija ADD
					WHEN addc => acc(8 DOWNTO 0) <= ('0' & acc(7 DOWNTO 0)) + ('0' & data_bus(7 DOWNTO 0)) + (x"00" & acc(8));-- operacija ADDC
					WHEN sub_op => acc(8 DOWNTO 0) <= ('0' & acc(7 DOWNTO 0)) - ('0' & data_bus(7 DOWNTO 0));-- operacija SUB
					WHEN subc => acc(8 DOWNTO 0) <= ('0' & acc(7 DOWNTO 0)) - ('0' & data_bus(7 DOWNTO 0)) - (x"00" & acc(8));-- operacija SUBC
					WHEN rol_op => acc(7 DOWNTO 0) <= acc(6 DOWNTO 0) & acc(7);--ROL
					WHEN rolc => acc(8 DOWNTO 0) <= acc(7 DOWNTO 0) & acc(8);--ROLC
					WHEN ror_op => acc(7 DOWNTO 0) <= acc(0) & acc(7 DOWNTO 1);--ROR
					WHEN rorc => acc(8 DOWNTO 0) <= acc(0) & acc(8 DOWNTO 1);--RORC
					WHEN and_op => acc(7 DOWNTO 0) <= acc(7 DOWNTO 0)AND data_bus(7 DOWNTO 0);-- operacija AND
					WHEN or_op => acc(7 DOWNTO 0) <= acc(7 DOWNTO 0)OR data_bus(7 DOWNTO 0);-- operacija OR
					WHEN xor_op => acc(7 DOWNTO 0) <= acc(7 DOWNTO 0)XOR data_bus(7 DOWNTO 0);-- operacija XOR
					WHEN not_op => acc(7 DOWNTO 0) <= NOT acc(7 DOWNTO 0);-- operacija NOT	
					WHEN loadl => acc <= acc(8) & data_bus(7 DOWNTO 0); -- operacija LOADL
					WHEN work.DEFS.read => acc <= acc(8) & data_bus(7 DOWNTO 0); -- operacija READ
					WHEN OTHERS => NULL;
				END CASE;
			END IF;

		END IF;

	END PROCESS;
	data_bus <= acc(7 DOWNTO 0) WHEN (acc_bus = '1') ELSE
		(OTHERS => 'Z');
	zero <= '1' WHEN (acc(7 DOWNTO 0) = allzero) ELSE
		'0';
	flag <= acc(8);

END ALU;