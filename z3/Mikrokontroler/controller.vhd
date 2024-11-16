LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
USE work.DEFS.ALL;

ENTITY controller IS
    PORT (
        -- Clock and reset
        clk    : IN STD_LOGIC;
        reset  : IN STD_LOGIC;
        ready  : IN STD_LOGIC;
        
        -- Instruction Register interface
        IR_out : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        wr_ir  : OUT STD_LOGIC;
        
        -- Flags
        flag_f : IN STD_LOGIC;  -- Flag input
        flag_z : IN STD_LOGIC;  -- Zero flag input
        
        -- Memory control signals
        wr_ram  : OUT STD_LOGIC;        -- Write enable for RAM
        en_ram  : OUT STD_LOGIC;        -- Enable RAM
        oe_ram  : OUT STD_LOGIC;        -- Output enable for RAM
        oe_rom  : OUT STD_LOGIC;        -- Output enable for ROM
        
        -- Register control signals
        wr_reg  : OUT STD_LOGIC;        -- Write enable for registers
        oe_reg  : OUT STD_LOGIC;        -- Output enable for registers
        
        -- Bus control signals
        acc_bus   : OUT STD_LOGIC;      -- Accumulator bus control
        load_acc  : OUT STD_LOGIC;      -- Load accumulator
        
        -- Address and data control
        mar_data  : OUT STD_LOGIC;      -- MAR data control
        data_mar  : OUT STD_LOGIC;      -- Data to MAR control
        pc_data   : OUT STD_LOGIC;      -- PC data control
        data_pc   : OUT STD_LOGIC       -- Data to PC control
    );
END controller;

ARCHITECTURE Behavioral OF controller IS
    -- State type definition
    TYPE state_type IS (
        FETCH1, FETCH2, FETCH3,         -- Instruction fetch states
        DECODE,                         -- Instruction decode state
        EXECUTE,                        -- Instruction execute state
        IDLE                           -- Idle state
    );
    
    -- State signals
    SIGNAL current_state, next_state : state_type;
    
    -- Instruction decode signals
    SIGNAL opcode : STD_LOGIC_VECTOR(4 DOWNTO 0);
    
BEGIN
    -- Extract opcode from instruction
    opcode <= IR_out(7 DOWNTO 3);
    
    -- State register process
    PROCESS (clk, reset)
    BEGIN
        IF reset = '1' THEN
            current_state <= IDLE;
        ELSIF rising_edge(clk) THEN
            IF ready = '1' THEN
                current_state <= next_state;
            END IF;
        END IF;
    END PROCESS;
    
    -- Next state and output logic
    PROCESS (current_state, opcode, flag_f, flag_z, ready)
    BEGIN
        -- Default values for all outputs
        wr_ir <= '0';
        wr_ram <= '0';
        en_ram <= '0';
        oe_ram <= '0';
        oe_rom <= '0';
        wr_reg <= '0';
        oe_reg <= '0';
        acc_bus <= '0';
        load_acc <= '0';
        mar_data <= '0';
        data_mar <= '0';
        pc_data <= '0';
        data_pc <= '0';
        
        CASE current_state IS
            WHEN IDLE =>
                IF ready = '1' THEN
                    next_state <= FETCH1;
                ELSE
                    next_state <= IDLE;
                END IF;
                
            WHEN FETCH1 =>
                -- First stage of instruction fetch
                oe_rom <= '1';      -- Enable ROM output
                wr_ir <= '1';       -- Enable writing to IR
                next_state <= FETCH2;
                
            WHEN FETCH2 =>
                -- Second stage of instruction fetch
                next_state <= FETCH3;
                
            WHEN FETCH3 =>
                -- Third stage of instruction fetch
                next_state <= DECODE;
                
            WHEN DECODE =>
                -- Instruction decode stage
                next_state <= EXECUTE;
                
            WHEN EXECUTE =>
                -- Instruction execution stage
                CASE opcode IS
                    WHEN load =>
                        -- Load operation
                        load_acc <= '1';
                        next_state <= FETCH1;
                        
                    WHEN store =>
                        -- Store operation
                        acc_bus <= '1';
                        wr_ram <= '1';
                        next_state <= FETCH1;
                        
                    -- Add more instruction cases here
                    
                    WHEN OTHERS =>
                        next_state <= FETCH1;
                END CASE;
                
        END CASE;
    END PROCESS;
    
END Behavioral;