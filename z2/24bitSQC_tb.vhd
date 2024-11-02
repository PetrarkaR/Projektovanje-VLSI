LIBRARY IEEE;
USE IEEE.Std_logic_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY SQC_tb IS
END ENTITY SQC_tb;

ARCHITECTURE bench OF SQC_tb IS
    COMPONENT SQC
        PORT (
            A                : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
            B                : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
            clk              : IN STD_LOGIC;
            rst              : IN STD_LOGIC;
            start_root            : IN STD_LOGIC;
            stop_root        : OUT STD_LOGIC

        );
    END COMPONENT;

    SIGNAL At             : STD_LOGIC_VECTOR(23 DOWNTO 0) := "000000000000000001000000";
    SIGNAL Bt             : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL clkt           : STD_LOGIC := '0';
    SIGNAL rstt           : STD_LOGIC := '0';
    SIGNAL startt         : STD_LOGIC := '0';
    SIGNAL stopp          : STD_LOGIC := '0';

    -- Internal signal observation

BEGIN
    -- Instantiate the Unit Under Test (UUT)
    uut: SQC
        PORT MAP (
            A                => At,
            B                => Bt,
            clk              => clkt,
            rst              => rstt,
            start_root       => startt,
            stop_root        =>stopp
        );

    -- Clock generation process
    clk_process: PROCESS
    BEGIN
        clkt <= '0';
        WAIT FOR 10 ns;
        clkt <= '1';
        WAIT FOR 10 ns;
    END PROCESS clk_process;

    -- Stimulus process to provide test inputs and control signals
    stim_proc: PROCESS
    BEGIN
        -- Apply reset initially
        rstt <= '1';
        WAIT FOR 20 ns;
        rstt <= '0';

        -- Start the operation
        startt <= '1';
        wait for 20 ns;
        startt <='0';

        -- Observe all signals for a few clock cycles
        WAIT FOR 200 ns;

        -- Apply another input

        -- Final wait to complete the simulation
        WAIT;
    END PROCESS stim_proc;

END ARCHITECTURE bench;
