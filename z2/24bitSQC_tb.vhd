LIBRARY IEEE;
USE IEEE.Std_logic_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY SQC_tb IS
END ENTITY SQC_tb;

ARCHITECTURE bench OF SQC_tb IS
    COMPONENT SQC
        PORT (
            A           : IN STD_LOGIC_VECTOR(23 DOWNTO 0);  -- Updated width
            B           : OUT STD_LOGIC_VECTOR(11 DOWNTO 0); -- Updated width
            clk         : IN STD_LOGIC;
            rst         : IN STD_LOGIC;
            start_root  : IN STD_LOGIC;
            stop_root   : OUT STD_LOGIC;
            outputregA  : OUT std_logic_vector(35 DOWNTO 0);
            outputregB  : OUT std_logic_vector(11 DOWNTO 0);
            outputMin   : OUT std_logic_vector(13 DOWNTO 0);
            outputSub   : OUT std_logic_vector(13 DOWNTO 0);
            outputDiff  : OUT std_logic_vector(13 DOWNTO 0);
            outputCout  : OUT std_logic
        );
    END COMPONENT;

    SIGNAL At         : STD_LOGIC_VECTOR(23 DOWNTO 0) := "000000000000000000000000"; -- Updated width
    SIGNAL Bt         : STD_LOGIC_VECTOR(11 DOWNTO 0);               -- Updated width
    SIGNAL clkt       : STD_LOGIC := '0';
    SIGNAL rstt       : STD_LOGIC := '0';
    SIGNAL startt     : STD_LOGIC := '0';
    SIGNAL stopp      : STD_LOGIC;
    SIGNAL testA      : std_logic_vector(35 downto 0);
    SIGNAL testB      : std_logic_vector(11 downto 0);
    SIGNAL testMin    : std_logic_vector(13 downto 0);
    SIGNAL testSub    : std_logic_vector(13 downto 0);
    SIGNAL testDiff   : std_logic_vector(13 downto 0);
    SIGNAL testCout   : std_logic;

    -- Internal signal observation
    SIGNAL endsim: boolean := false;

BEGIN
    -- Instantiate the Unit Under Test (UUT)
    uut : SQC
    PORT MAP(
        A           => At,
        B           => Bt,
        clk         => clkt,
        rst         => rstt,
        start_root  => startt,
        stop_root   => stopp,
        outputregA  => testA,
        outputregB  => testB,
        outputMin   => testMin,
        outputSub   => testSub,
        outputDiff  => testDiff,
        outputCout  => testCout
    );

    -- Clock generation process
    clk_process : PROCESS
    BEGIN
        IF (endsim = false) THEN
            clkt <= '0';
            WAIT FOR 10 ns;
            clkt <= '1';
            WAIT FOR 10 ns;
        ELSE
            WAIT;
        END IF;
    END PROCESS clk_process;

    -- Stimulus process to provide test inputs and control signals
    stim_proc : PROCESS
    BEGIN
        -- Apply reset initially
        rstt <= '1';
        WAIT FOR 20 ns;
        rstt <= '0';

        -- Start the operation

        
        At <= "000000000000000000011001"; -- 25 in binary for an 8-bit input
        startt <= '1';
        WAIT FOR 20 ns;
        startt <= '0';
        WAIT FOR 400 ns;

        -- End simulation
        endsim <= true;
        
        WAIT;
    END PROCESS stim_proc;

END ARCHITECTURE bench;
