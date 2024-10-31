LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Generator IS
    PORT (
        A : IN STD_LOGIC;
        B : IN STD_LOGIC;
        G_out : OUT STD_LOGIC;
        P_out : OUT STD_LOGIC);
END Generator;

ARCHITECTURE Behavioral OF Generator IS

BEGIN
    P_out <= A XOR B;
    G_out <= A AND B;

END Behavioral;