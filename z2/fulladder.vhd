LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.std_logic_arith.ALL;

ENTITY FA IS
    PORT (
        A : IN STD_LOGIC;
        B : IN STD_LOGIC;
        S : OUT STD_LOGIC;
        C : OUT STD_LOGIC;
        CIN : IN STD_LOGIC
    );
END FA;

ARCHITECTURE behavioral OF FA IS
    SIGNAL xs : STD_LOGIC;
    SIGNAL as : STD_LOGIC;
    SIGNAL sig : STD_LOGIC;
BEGIN
    xs <= A XOR B;
    S <= xs XOR CIN;
    sig <= xs AND CIN;
    as <= A AND B;
    C <= sig OR as;
END ARCHITECTURE;