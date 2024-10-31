LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.Carry_Tree_Adder_pkg.ALL;

ENTITY Kogge_Stone_Adder IS
    GENERIC (N : INTEGER := 8); -- Define N as a generic parameter
    PORT (
        A : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
        C_in : IN STD_LOGIC := '0';
        C_out : OUT STD_LOGIC;
        Sum_out : OUT STD_LOGIC_VECTOR(N - 1 DOWNTO 0));
END Kogge_Stone_Adder;

ARCHITECTURE Behavioral OF Kogge_Stone_Adder IS

    SIGNAL g_0 : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL p_0 : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);

    SIGNAL g1 : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL p1 : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);

    SIGNAL g2 : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL p2 : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);

    SIGNAL g3 : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);
    SIGNAL p3 : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);

    SIGNAL car : STD_LOGIC_VECTOR(N - 1 DOWNTO 0);

BEGIN

    start_signals :
    FOR i IN 0 TO N - 1 GENERATE
        map_gen_0 : COMPONENT Generator PORT MAP(
            A => A(i),
            B => B(i),
            G_out => g_0(i),
            P_out => p_0(i));
    END GENERATE;
    Stage_1 :
    FOR i IN 0 TO N - 2 GENERATE
        map_car_1 : COMPONENT Carry_oper PORT MAP(
            G_prev => g_0(i),
            P_prev => p_0(i),
            G_Curr => g_0(i + 1),
            P_Curr => p_0(i + 1),
            P_out => p1(i + 1),
            G_out => g1(i + 1));
    END GENERATE;
    g1(0) <= g_0(0);
    p1(0) <= p_0(0);

    -- GRESKA 1, pogledaj sliku, drugi red treba od 0 do N-3
    Stage_2 : FOR i IN 0 TO N - 3 GENERATE
        map_car_2 : COMPONENT Carry_oper PORT MAP(
            G_prev => g1(i),
            P_prev => p1(i),
            G_Curr => g1(i + 2),
            P_Curr => p1(i + 2),
            P_out => p2(i + 2),
            G_out => g2(i + 2));
    END GENERATE;

    -- GRESKA2: pogledaj sliku, ovo treba samo za indekse 0 i 1 a ne cele vektore
    Storing :
    for i in 0 to 1 generate
        g2(i) <= g1(i);
        p2(i) <= p1(i);
    end generate;

    -- GRESKA3: FALI CEO JEDAN RED od cetiri prefiks operatora koji daju g3 i p3
    Stage_3 : FOR i IN 0 TO N-3  GENERATE
        map_car_2 : COMPONENT Carry_oper PORT MAP(
            G_prev => g2(i),
            P_prev => p2(i),
            G_Curr => g2(i + 2),
            P_Curr => p2(i + 2),
            P_out => p3(i + 2),
            G_out => g3(i + 2));
    END GENERATE;


    -- GRESKA4: pogledaj sliku, ovo treba samo za indekse 0, 1, 2 I 3 a ne cele vektore
    Storing_3 :
    for i in 0 to 3 generate
        g3(i) <= g2(i);
        p3(i) <= p2(i);
    end generate;


    carry_gen : FOR i IN 0 TO N - 1 GENERATE
        car(i) <= g3(i) OR (C_in AND p3(i));
    END GENERATE;

    C_out <= car(N - 1);
    Sum_out(0) <= C_in XOR p_0(0);

    Sum : FOR i IN 1 TO N - 1 GENERATE
        Sum_out(i) <= car(i - 1) XOR p_0(i);
    END GENERATE;

END Behavioral;