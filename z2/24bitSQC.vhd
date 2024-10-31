LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;
use work.adder_pkg.all;

ENTITY SQC IS
    PORT (
        A            : IN STD_LOGIC_VECTOR(23 DOWNTO 0);
        B            : OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        clk          : IN STD_LOGIC;
        rst          : IN STD_LOGIC;
        start        : IN STD_LOGIC;

        -- Exposing all internal signals
        expandedA_out: OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
        entryA_out   : OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
        registerA_out: OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
        registerB_out: OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        minuend_out  : OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
        subtrahend_out: OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
        difference_out: OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
        multiplex1A_out: OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
        multiplex2A_out: OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
        multiplex3A_out: OUT STD_LOGIC_VECTOR(35 DOWNTO 0);
        multiplex1B_out: OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        multiplex2B_out: OUT STD_LOGIC_VECTOR(11 DOWNTO 0);
        expandedB_out: OUT STD_LOGIC_VECTOR(13 DOWNTO 0);
        cout_out     : OUT STD_LOGIC;
        cnt_out      : OUT Unsigned(3 downto 0);
        enable_out   : OUT STD_LOGIC;
        carryout_out : OUT STD_LOGIC_VECTOR(13 DOWNTO 0)
    );
END SQC;

ARCHITECTURE Behavioral OF SQC IS
    SIGNAL expandedA : STD_LOGIC_VECTOR(35 DOWNTO 0);
    SIGNAL entryA : STD_LOGIC_VECTOR(35 DOWNTO 0);
    SIGNAL registerA : STD_LOGIC_VECTOR(35 DOWNTO 0);
    SIGNAL registerB : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL minuend : STD_LOGIC_VECTOR(13 DOWNTO 0); --onaj prvi broj
    SIGNAL subtrahend : STD_LOGIC_VECTOR(13 DOWNTO 0); -- onaj broj sto oduzima
    SIGNAL difference : STD_LOGIC_VECTOR(13 DOWNTO 0); --razlika
    SIGNAL multiplex1A : STD_LOGIC_VECTOR(35 DOWNTO 0);
    SIGNAL multiplex2A : STD_LOGIC_VECTOR(35 DOWNTO 0);
    SIGNAL multiplex3A : STD_LOGIC_VECTOR(35 DOWNTO 0);
    SIGNAL multiplex1B : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL multiplex2B : STD_LOGIC_VECTOR(11 DOWNTO 0);
    SIGNAL expandedB   : STD_LOGIC_VECTOR(13 DOWNTO 0);
    SIGNAL cout : STD_LOGIC;
    SIGNAL cnt : UNSIGNED(3 downto 0);
    SIGNAL enable : STD_LOGIC := '0';
    SIGNAL zeroes : STD_LOGIC_VECTOR(11 DOWNTO 0) := (OTHERS => '0');
    SIGNAL carryout:STD_LOGIC_VECTOR(13 DOWNTO 0);

BEGIN
    expandedA <= A & zeroes;
    entryA <= difference(11 DOWNTO 0) & registerA(21 DOWNTO 0) & "00";
    expandedB <=registerB(11 downto 0)& "01";
    minuend <=registerA(35 downto 22);
    subtrahend<=not expandedB;
    expandedA_out     <= expandedA;
entryA_out        <= entryA;
registerA_out     <= registerA;
registerB_out     <= registerB;
minuend_out       <= minuend;
subtrahend_out    <= subtrahend;
difference_out    <= difference;
multiplex1A_out   <= multiplex1A;
multiplex2A_out   <= multiplex2A;
multiplex3A_out   <= multiplex3A;
multiplex1B_out   <= multiplex1B;
multiplex2B_out   <= multiplex2B;
expandedB_out     <= expandedB;
cout_out          <= cout;
cnt_out           <= cnt;
enable_out        <= enable;
carryout_out      <= carryout;




    control :
    PROCESS (clk, rst) IS
    BEGIN
        IF (rst = '1') THEN
        cnt <= to_unsigned(0, 4); 
            enable <= '0';
        ELSIF rising_edge (clk) THEN
            IF (start = '1') THEN
            cnt <= to_unsigned(0, 4); 
            enable <= '0';
            ELSE
                IF (cnt = 11) THEN
                    cnt <= to_unsigned(0, 4); 
                    enable <= '1';
                ELSE
                    cnt <= cnt + 1;
                    END IF;
                END IF;
            END IF;
    END PROCESS;

    PROCESS (enable, registerB, cout) IS
    BEGIN
        CASE enable IS
            WHEN '0' => multiplex1B <= registerB;
            WHEN '1' => multiplex1B <= registerB(10 DOWNTO 0) & cout;
            WHEN OTHERS => multiplex1B <= (OTHERS => '0');
        END CASE;
    END PROCESS;

    PROCESS (start, multiplex1B) IS
    BEGIN
        CASE enable IS
            WHEN '0' => multiplex2B <= multiplex1B;
            WHEN '1' => multiplex2B <= zeroes;
            WHEN OTHERS => multiplex2B <= (OTHERS => '0');
        END CASE;
    END PROCESS;
    registerBl :
    PROCESS (clk, rst) IS
    BEGIN
        IF (rst = '1') THEN
            registerB <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            registerB <= multiplex2B;
        END IF;
    END PROCESS;


    multi1A:
    process(registerA,difference,cout) is
        begin
            case cout is
                when '0' =>multiplex1A<=registerA(33 downto 0 )& "00";
                when '1' =>multiplex1A<=entryA;
                when others =>multiplex1A<=(others=>'0');
                end case;
                end process;


    multi2A:
    process(registerA,multiplex1A,enable) is
        begin
            case enable is
                when '0' =>multiplex2A<=registerA;
                when '1' =>multiplex2A<=multiplex1A;
                when others =>multiplex2A<=(others=>'0');
                end case;
            end process;

    multi3A:
    process(expandedA,multiplex2A,start) is
        begin
            case start is
                when '0' =>multiplex3A<=multiplex2A;
                when '1' =>multiplex3A<=expandedA;
                when others =>multiplex3A<=(others=>'0');
                end case;
    end process;
    registerAl :
    PROCESS (clk, rst) IS
    BEGIN
        IF (rst = '1') THEN
            registerA <= (OTHERS => '0');
        ELSIF rising_edge(clk) THEN
            registerA <= multiplex3A;
        END IF;
    END PROCESS;
    
    subtractorFirstBit: component FA port map(
        A=>minuend(0),
        B=>subtrahend(0),
        S=>difference(0),
        CIN=>'1',
        C=>carryout(0));
    subtract:for i in 1 to 13 generate
    sub:   component FA port map(
        A=>minuend(i),
        B=>subtrahend(i),
        S=>difference(i),
        CIN=>carryout(i-1),
        C=>carryout(i));
        end generate;
        cout<=carryout(13);

END Behavioral;