LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
use work.adder_pkg.all;

ENTITY SQC IS
    PORT (
        B            : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        stop_root    : OUT STD_LOGIC;
        clk          : IN STD_LOGIC;
        rst          : IN STD_LOGIC;
        start_root   : IN STD_LOGIC;
        A            : IN STD_LOGIC_VECTOR(23 DOWNTO 0)
    );
END SQC;

ARCHITECTURE Behavioral OF SQC IS
    SIGNAL expandedA : STD_LOGIC_VECTOR(35 DOWNTO 0);
    SIGNAL entryA : STD_LOGIC_VECTOR(35 DOWNTO 0);
    SIGNAL registerA : STD_LOGIC_VECTOR(35 DOWNTO 0);
    SIGNAL registerB : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL minuend : STD_LOGIC_VECTOR(13 DOWNTO 0);
    SIGNAL subtrahend : STD_LOGIC_VECTOR(13 DOWNTO 0);
    SIGNAL difference : STD_LOGIC_VECTOR(13 DOWNTO 0);
    SIGNAL cout : STD_LOGIC;
    SIGNAL cnt : UNSIGNED(3 downto 0);
    SIGNAL calculating : STD_LOGIC := '0';
    SIGNAL zeroes : STD_LOGIC_VECTOR(11 DOWNTO 0) := (OTHERS => '0');
    SIGNAL carryout : STD_LOGIC_VECTOR(13 DOWNTO 0);

BEGIN
    -- Output assignments
    B <= registerB;
    stop_root <= '1' when cnt = 11 and calculating = '1' else '0';
    
    -- Initial expansion of input A
    expandedA <= A & zeroes;
    
    -- Prepare minuend and subtrahend
    minuend <= registerA(35 downto 22);
    subtrahend <= not (registerB & "01");  -- Current result with 01 appended
    
    -- Control process
    process(clk, rst)
    begin
        if rst = '1' then
            cnt <= (others => '0');
            calculating <= '0';
            registerA <= (others => '0');
            registerB <= (others => '0');
        elsif rising_edge(clk) then
            if start_root = '1' then
                -- Initialize for new calculation
                cnt <= (others => '0');
                calculating <= '1';
                registerA <= expandedA;
                registerB <= (others => '0');
            elsif calculating = '1' then
                if cnt < 11 then
                    -- Perform iteration
                    if cout = '1' then
                        -- If subtraction was successful
                        registerA <= difference(11 downto 0) & registerA(21 downto 0) & "00";
                        registerB <= registerB(10 downto 0) & '1';
                    else
                        -- If subtraction failed
                        registerA <= registerA(33 downto 0) & "00";
                        registerB <= registerB(10 downto 0) & '0';
                    end if;
                    cnt <= cnt + 1;
                else
                    -- End calculation
                    calculating <= '0';
                end if;
            end if;
        end if;
    end process;

    -- Subtractor implementation
    subtractorFirstBit: component FA port map(
        A => minuend(0),
        B => subtrahend(0),
        S => difference(0),
        CIN => '1',
        C => carryout(0)
    );
    
    subtract: for i in 1 to 13 generate
        sub: component FA port map(
            A => minuend(i),
            B => subtrahend(i),
            S => difference(i),
            CIN => carryout(i-1),
            C => carryout(i)
        );
    end generate;
    
    cout <= carryout(13);

END Behavioral;