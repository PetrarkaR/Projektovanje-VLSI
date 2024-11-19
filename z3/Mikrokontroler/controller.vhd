LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.ALL;
USE work.defs.ALL;

ENTITY cpu_control IS 
    PORT (
        -- Control inputs
        flags_f, flags_z   : IN  STD_LOGIC;
        reset, clk   : IN  STD_LOGIC;
        instruction_reg    : IN  STD_LOGIC_VECTOR(7 DOWNTO 0);
        
        -- Control outputs
        accumulator_out    : OUT STD_LOGIC;
        data_to_mar       : OUT STD_LOGIC;
        data_to_pc        : OUT STD_LOGIC;
        ram_enable        : OUT STD_LOGIC;
        accumulator_load  : OUT STD_LOGIC;
        mar_to_data      : OUT STD_LOGIC;
        ram_output_en    : OUT STD_LOGIC;
        rom_output_en    : OUT STD_LOGIC;
        pc_to_data       : OUT STD_LOGIC;
        ready     : OUT STD_LOGIC;
        ir_write_en      : OUT STD_LOGIC;
        ram_write_en     : OUT STD_LOGIC;
        reg_write_en     : OUT STD_LOGIC;
        reg_output_en    : OUT STD_LOGIC
    );
END ENTITY cpu_control;

ARCHITECTURE rtl OF cpu_control IS
    TYPE machine_states IS (
        RESET_0, RESET_1, RESET_2,
        FETCH, DECODE, EXECUTE,
        WRITE_OP, STORE_OP, JUMP_OP, NOP_OP,
        READ_OP, LOAD_OP, ALU_OP
    );
    
    -- Internal signals
    SIGNAL current_state, next_state : state;
    SIGNAL opcode    : STD_LOGIC_VECTOR(4 DOWNTO 0);
    SIGNAL init_count   : STD_LOGIC_VECTOR(8 DOWNTO 0);

BEGIN
    opcode <= instruction_reg(7 DOWNTO 3);

    state_and_counter: PROCESS (clk, reset) 
    BEGIN
        IF reset = '1' THEN
            current_state <= RESET_0;
            init_count <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            current_state <= next_state;
            IF init_count = "111111111" THEN
                init_count <= init_count;  -- Hold at max
            ELSE
                init_count <= init_count + 1;
            END IF;
        END IF;
    END PROCESS state_and_counter;

    control_logic: PROCESS (current_state, opcode, flags_z, flags_f, init_count) 
    BEGIN
        accumulator_out <= '0'; data_to_mar <= '0'; data_to_pc <= '0';
        ram_enable <= '0'; accumulator_load <= '0'; mar_to_data <= '0';
        ram_output_en <= '0'; rom_output_en <= '0'; pc_to_data <= '0';
        ready <= '0'; ir_write_en <= '0'; ram_write_en <= '0';
        reg_write_en <= '0'; reg_output_en <= '0';

        CASE current_state IS
            WHEN RESET_0 =>
                next_state <= RESET_1;

            WHEN RESET_1 =>
                pc_to_data <= '1';
                data_to_mar <= '1';
                next_state <= RESET_2;

            WHEN RESET_2 =>
                rom_output_en <= '1';
                ram_write_en <= '1';
                ram_enable <= '1';
                ready <= '1';
                IF init_count = "111111111" THEN
                    next_state <= FETCH;
                ELSE
                    next_state <= RESET_1;
                END IF;

            WHEN FETCH =>
                pc_to_data <= '1';
                data_to_mar <= '1';
                next_state <= DECODE;

            WHEN DECODE =>
                ram_output_en <= '1';
                ir_write_en <= '1';
                ram_enable <= '1';
                data_to_mar <= '1';
                next_state <= EXECUTE;

            WHEN EXECUTE =>
                IF opcode = write THEN
                    next_state <= WRITE_OP;
                ELSIF opcode = store THEN
                    next_state <= STORE_OP;
                ELSIF (opcode = jmp) OR (opcode = jnf) OR 
                      (opcode = jf) OR (opcode = jnz) OR 
                      (opcode = jz) THEN
                    IF (opcode = jmp) OR 
                       (opcode = jnf AND flags_f = '0') OR 
                       (opcode = jf AND flags_f = '1') OR 
                       (opcode = jnz AND flags_z = '0') OR 
                       (opcode = jz AND flags_z = '1') THEN
                        next_state <= JUMP_OP;
                    ELSE
                        next_state <= NOP_OP;
                    END IF;
                ELSIF opcode = nop THEN
                    next_state <= NOP_OP;
                ELSIF opcode = read THEN
                    next_state <= READ_OP;
                ELSIF opcode = loadl THEN
                    next_state <= LOAD_OP;
                ELSE
                    next_state <= ALU_OP;
                END IF;

            WHEN WRITE_OP =>
                accumulator_out <= '1';
                reg_write_en <= '1';
                ready <= '1';
                next_state <= FETCH;

            WHEN STORE_OP =>
                accumulator_out <= '1';
                ram_write_en <= '1';
                ram_enable <= '1';
                ready <= '1';
                next_state <= FETCH;

            WHEN JUMP_OP =>
                mar_to_data <= '1';
                data_to_pc <= '1';
                ready <= '1';
                next_state <= FETCH;

            WHEN NOP_OP =>
                ready <= '1';
                next_state <= FETCH;

            WHEN READ_OP =>
                reg_output_en <= '1';
                accumulator_load <= '1';
                ready <= '1';
                next_state <= FETCH;

            WHEN LOAD_OP =>
                mar_to_data <= '1';
                accumulator_load <= '1';
                ready <= '1';
                next_state <= FETCH;

            WHEN ALU_OP =>
                ram_output_en <= '1';
                accumulator_load <= '1';
                ram_enable <= '1';
                ready <= '1';
                next_state <= FETCH;

        END CASE;
    END PROCESS control_logic;

END ARCHITECTURE rtl;