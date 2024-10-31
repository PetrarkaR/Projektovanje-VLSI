LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Carry_oper IS
    PORT (
        G_prev : IN STD_LOGIC;
        G_curr : IN STD_LOGIC;
        P_prev : IN STD_LOGIC;
        P_curr : IN STD_LOGIC;
        G_out : OUT STD_LOGIC;
        P_out : OUT STD_LOGIC);
END Carry_oper;

ARCHITECTURE Behavioral OF Carry_oper IS

BEGIN
    P_out <= P_prev AND P_curr;
    G_out <= (P_curr AND G_prev) OR G_curr;

END Behavioral;