LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.defs.ALL;
 
ENTITY Controller IS PORT (
	flag_f, flag_z, reset, clk : IN STD_LOGIC;
	IR_out : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	acc_bus, data_mar, data_pc, en_ram, load_acc, mar_data, oe_ram, oe_rom, pc_data, ready, wr_ir, wr_ram, wr_reg, oe_reg : OUT STD_LOGIC);
END ENTITY Controller;
 
ARCHITECTURE Controller OF Controller IS
 
	TYPE state_type IS (R0, R1, R2, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10);
	SIGNAL present_state, next_state : state_type;
	SIGNAL opkod : STD_LOGIC_VECTOR(4 DOWNTO 0);
	SIGNAL cnt : STD_LOGIC_VECTOR(8 DOWNTO 0);
 
BEGIN
 
	proc1 : PROCESS (clk, reset) IS
	BEGIN
		IF reset = '1' THEN
			present_state <= R0;
			cnt <= (OTHERS => '0');
		ELSIF (clk'event AND clk = '1') THEN
			present_state <= next_state;
			IF (cnt = "111111111") THEN
				cnt <= "111111111";
			ELSE
				cnt <= cnt + '1';
			END IF;
		END IF;
	END PROCESS proc1;
 
 opkod <= IR_out(7 DOWNTO 3);
 
	proc2 : PROCESS (present_state, opkod, flag_z, flag_f, cnt) IS
	BEGIN
		acc_bus <= '0';
		data_mar <= '0';
		data_pc <= '0';
		en_ram <= '0';
		load_acc <= '0';
		mar_data <= '0';
		oe_ram <= '0';
		oe_rom <= '0';
		pc_data <= '0';
		ready <= '0';
		wr_ir <= '0';
		wr_ram <= '0';
		wr_reg <= '0';
		oe_reg <= '0';
 
		CASE (present_state) IS
			WHEN R0 =>
				next_state <= R1;
			WHEN R1 =>
				pc_data <= '1';
				data_mar <= '1';
				next_state <= R2;
			WHEN R2 =>
				oe_rom <= '1';
				wr_ram <= '1';
				en_ram <= '1';
				ready <= '1';
				IF (cnt = "111111111") THEN
					next_state <= I1;
				ELSE
					next_state <= R1;
				END IF;
			WHEN I1 =>
				pc_data <= '1';
				data_mar <= '1';
				next_state <= I2;
			WHEN I2 =>
				oe_ram <= '1';
				wr_ir <= '1';
				en_ram <= '1';
				data_mar <= '1';
				next_state <= I3;
			WHEN I3 =>
				IF opkod = write THEN
					next_state <= I4;
				ELSIF opkod = store THEN
					next_state <= I5;
				ELSIF ((opkod = jmp) OR  (opkod = jnf) OR  (opkod = jf) OR  (opkod = jnz) OR  (opkod = jz)) THEN
					IF ((opkod = jmp) OR ((opkod = jnf) AND (flag_f = '0')) OR ((opkod = jf) AND(flag_f = '1')) OR ((opkod = jnz) AND(flag_z = '0')) OR ((opkod = jz) AND (flag_z = '1'))) THEN
						next_state <= I6;
					ELSE
						next_state <= I7;
					END IF;
				ELSIF opkod = nop THEN
					next_state <= I7;
				ELSIF opkod = read THEN
					next_state <= I8;
				ELSIF opkod = loadl THEN
					next_state <= I9;
				ELSE
					next_state <= I10;
				END IF;
			WHEN I4 =>
				acc_bus <= '1';
				wr_reg <= '1';
				ready <= '1';
				next_state <= I1;
			WHEN I5 =>
				acc_bus <= '1';
				wr_ram <= '1';
				en_ram <= '1';
				ready <= '1';
				next_state <= I1;
			WHEN I6 =>
				mar_data <= '1';
				data_pc <= '1';
				ready <= '1';
				next_state <= I1;
			WHEN I7 =>
				ready <= '1';
				next_state <= I1;
			WHEN I8 =>
				oe_reg <= '1';
				load_acc <= '1';
				ready <= '1';
				next_state <= I1;
			WHEN I9 =>
				mar_data <= '1';
				load_acc <= '1';
				ready <= '1';
				next_state <= I1;
			WHEN I10 =>
				oe_ram <= '1';
				load_acc <= '1';
				en_ram <= '1';
				ready <= '1';
				next_state <= I1;
		END CASE;
end process;
	END ARCHITECTURE Controller;