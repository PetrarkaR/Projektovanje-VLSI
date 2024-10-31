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
            start            : IN STD_LOGIC;

            expandedA_out    : OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
            entryA_out       : OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
            registerA_out    : OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
            registerB_out    : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
            minuend_out      : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
            subtrahend_out   : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
            difference_out   : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
            multiplex1A_out  : OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
            multiplex2A_out  : OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
            multiplex3A_out  : OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
            multiplex1B_out  : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
            multiplex2B_out  : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
            expandedB_out    : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
            cout_out         : OUT STD_LOGIC;
            cnt_out          : OUT unsigned(3 downto 0);
            enable_out       : OUT STD_LOGIC;
            carryout_out     : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL At             : STD_LOGIC_VECTOR(23 DOWNTO 0) := "000000000000000000000100";
    SIGNAL Bt             : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL clkt           : STD_LOGIC := '0';
    SIGNAL rstt           : STD_LOGIC := '0';
    SIGNAL startt         : STD_LOGIC := '0';

    -- Internal signal observation
    SIGNAL expandedA_tb, entryA_tb, registerA_tb, multiplex1A_tb, multiplex2A_tb, multiplex3A_tb : STD_LOGIC_VECTOR(35 DOWNTO 0);
    SIGNAL registerB_tb, multiplex1B_tb, multiplex2B_tb : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL minuend_tb, subtrahend_tb, difference_tb, expandedB_tb : STD_LOGIC_VECTOR(13 DOWNTO 0);
    SIGNAL cout_tb, enable_tb : STD_LOGIC;
    SIGNAL cnt_tb : unsigned(3 downto 0);
    SIGNAL carryout_tb : STD_LOGIC_VECTOR(13 DOWNTO 0);

BEGIN
    -- Instantiate the Unit Under Test (UUT)
    uut: SQC
        PORT MAP (
            A                => At,
            B                => Bt,
            clk              => clkt,
            rst              => rstt,
            start            => startt,
            expandedA_out    => expandedA_tb,
            entryA_out       => entryA_tb,
            registerA_out    => registerA_tb,
            registerB_out    => registerB_tb,
            minuend_out      => minuend_tb,
            subtrahend_out   => subtrahend_tb,
            difference_out   => difference_tb,
            multiplex1A_out  => multiplex1A_tb,
            multiplex2A_out  => multiplex2A_tb,
            multiplex3A_out  => multiplex3A_tb,
            multiplex1B_out  => multiplex1B_tb,
            multiplex2B_out  => multiplex2B_tb,
            expandedB_out    => expandedB_tb,
            cout_out         => cout_tb,
            cnt_out          => cnt_tb,
            enable_out       => enable_tb,
            carryout_out     => carryout_tb
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
