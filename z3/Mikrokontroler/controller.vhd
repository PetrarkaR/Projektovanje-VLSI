LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE work.DEFS.ALL;

ENTITY controller IS
    PORT (
        -- Clock and control
        clk     : IN STD_LOGIC;
        reset   : IN STD_LOGIC;
        ready   : inout STD_LOGIC;
        
        -- Instruction and flags
        IR_out  : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        flag_f  : IN STD_LOGIC;
        flag_z  : IN STD_LOGIC;
        
        -- Memory control
        wr_ram  : OUT STD_LOGIC;
        en_ram  : OUT STD_LOGIC;
        oe_ram  : OUT STD_LOGIC;
        oe_rom  : OUT STD_LOGIC;
        
        -- Register and bus control
        wr_reg  : OUT STD_LOGIC;
        oe_reg  : OUT STD_LOGIC;
        wr_ir   : OUT STD_LOGIC;
        acc_bus : OUT STD_LOGIC;
        load_acc: OUT STD_LOGIC;
        
        -- Address and data control
        mar_data: OUT STD_LOGIC;
        data_mar: OUT STD_LOGIC;
        pc_data : OUT STD_LOGIC;
        data_pc : OUT STD_LOGIC
    );
END controller;

ARCHITECTURE Behavioral OF controller IS
    -- State definitions
    TYPE state_type IS (
        -- Initialization states
        R1, R2,
        -- Instruction fetch and decode states
        I1, I2, I3,
        -- Execution states
        I4, I5, I6, I7, I8, I9, I10
    );
    
    SIGNAL current_state, next_state : state_type;
    SIGNAL init_counter : STD_LOGIC_VECTOR(9 DOWNTO 0); -- Counter for initialization
    SIGNAL opcode : STD_LOGIC_VECTOR(4 DOWNTO 0);
    
BEGIN
    opcode <= IR_out(7 DOWNTO 3);
    
    -- State register and initialization counter
    PROCESS (clk, reset)
    BEGIN
        IF reset = '1' THEN
            current_state <= R1;
            init_counter <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            IF ready = '1' THEN
                current_state <= next_state;
                IF current_state = R1 OR current_state = R2 THEN
                    init_counter <= init_counter + 1;
                END IF;
            END IF;
        END IF;
    END PROCESS;
    
    -- Next state and output logic
    PROCESS (current_state, init_counter, opcode, flag_f, flag_z)
    BEGIN
        -- Default values
        wr_ram <= '0'; en_ram <= '0'; oe_ram <= '0'; oe_rom <= '0';
        wr_reg <= '0'; oe_reg <= '0'; wr_ir <= '0';
        acc_bus <= '0'; load_acc <= '0';
        mar_data <= '0'; data_mar <= '0'; pc_data <= '0'; data_pc <= '0';
        
        CASE current_state IS
            -- Initialization Phase
            WHEN R1 =>
                pc_data <= '1';    -- Read PC
                data_mar <= '1';   -- Load MAR
                IF init_counter < 511 THEN
                    next_state <= R2;
                ELSE
                    next_state <= I1;
                END IF;
                
            WHEN R2 =>
                oe_rom <= '1';     -- Read from ROM
                wr_ram <= '1';     -- Write to RAM
                next_state <= R1;
                
            -- Instruction Fetch Phase
            WHEN I1 =>
                pc_data <= '1';    -- PC to data bus
                data_mar <= '1';   -- Load MAR
                next_state <= I2;
                
            WHEN I2 =>
                oe_ram <= '1';     -- Read memory
                wr_ir <= '1';      -- Load IR
                next_state <= I3;
                
            WHEN I3 =>
                -- Instruction decode
                CASE opcode IS
                    WHEN write =>  next_state <= I4;
                    WHEN store =>  next_state <= I5;
                    WHEN jmp =>    next_state <= I6;
                    WHEN jnf =>    next_state <= I6;
                    WHEN jf =>     next_state <= I6;
                    WHEN jz =>     next_state <= I6;
                    WHEN jnz =>    next_state <= I6;
                    WHEN nop =>    next_state <= I7;
                    WHEN read =>   next_state <= I8;
                    WHEN loadl =>  next_state <= I9;
                    WHEN OTHERS => next_state <= I10;
                END CASE;
                
            -- Execution States
            WHEN I4 =>
                -- WRITE instruction
                acc_bus <= '1';    -- ACC to bus
                wr_reg <= '1';     -- Write to register
                next_state <= I1;
                
            WHEN I5 =>
                -- STORE instruction
                acc_bus <= '1';    -- ACC to bus
                wr_ram <= '1';     -- Write to RAM
                next_state <= I1;
                
            WHEN I6 =>
                -- JUMP instructions
                CASE opcode IS
                    WHEN jmp => 
                        data_pc <= '1';  -- Load PC
                        next_state <= I1;
                    WHEN jnf =>
                        IF flag_f = '0' THEN
                            data_pc <= '1';
                        END IF;
                        next_state <= I1;
                    WHEN jf =>
                        IF flag_f = '1' THEN
                            data_pc <= '1';
                        END IF;
                        next_state <= I1;
                    WHEN jz =>
                        IF flag_z = '1' THEN
                            data_pc <= '1';
                        END IF;
                        next_state <= I1;
                    WHEN jnz =>
                        IF flag_z = '0' THEN
                            data_pc <= '1';
                        END IF;
                        next_state <= I1;
                    WHEN OTHERS =>
                        next_state <= I1;
                END CASE;
                
            WHEN I7 =>
                -- NOP instruction
                next_state <= I1;
                
            WHEN I8 =>
                -- READ instruction
                load_acc <= '1';   -- Load ACC
                next_state <= I1;
                
            WHEN I9 =>
                -- LOADL instruction
                load_acc <= '1';   -- Load ACC
                next_state <= I1;
                
            WHEN I10 =>
                -- ALU operations
                load_acc <= '1';   -- Load ACC
                next_state <= I1;
                
        END CASE;
    END PROCESS;
    
END Behavioral;