LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE work.Carry_Tree_Adder_pkg.ALL;

ENTITY Kogge_Stone_Adder IS
    GENERIC (N : INTEGER := 8);
    PORT (
        A : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
        B : IN STD_LOGIC_VECTOR(N-1 DOWNTO 0);
        C_in : IN STD_LOGIC := '0';
        C_out : OUT STD_LOGIC;
        Sum_out : OUT STD_LOGIC_VECTOR(N-1 DOWNTO 0));
END Kogge_Stone_Adder;

ARCHITECTURE Behavioral OF Kogge_Stone_Adder IS
    -- Initial generate and propagate signals
    SIGNAL g_0, p_0 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
    -- Signals for each stage
    SIGNAL g1, p1 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
    SIGNAL g2, p2 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
    SIGNAL g3, p3 : STD_LOGIC_VECTOR(N-1 DOWNTO 0);
    -- Carry signals
    SIGNAL car : STD_LOGIC_VECTOR(N-1 DOWNTO 0);

BEGIN
    -- Generate initial G and P signals
    start_signals: FOR i IN 0 TO N-1 GENERATE
        map_gen_0: COMPONENT Generator 
        PORT MAP(
            A => A(i),
            B => B(i),
            G_out => g_0(i),
            P_out => p_0(i));
    END GENERATE;


    Stage_1: FOR i IN 0 TO N-2 GENERATE
        map_car_1: COMPONENT Carry_oper 
        PORT MAP(
            G_prev => g_0(i),
            P_prev => p_0(i),
            G_Curr => g_0(i+1),
            P_Curr => p_0(i+1),
            G_out => g1(i+1),
            P_out => p1(i+1));
    END GENERATE;

    g1(0) <= g_0(0);
    p1(0) <= p_0(0);

    Stage_2: FOR i IN 0 TO N-3 GENERATE
        map_car_2: COMPONENT Carry_oper 
        PORT MAP(
            G_prev => g1(i),
            P_prev => p1(i),
            G_Curr => g1(i+2),
            P_Curr => p1(i+2),
            G_out => g2(i+2),
            P_out => p2(i+2));
    END GENERATE;
    -- Forward previous stage values
    g2(0) <= g1(0);
    g2(1) <= g1(1);
    p2(0) <= p1(0);
    p2(1) <= p1(1);

    Stage_3: FOR i IN 0 TO N-5 GENERATE
        map_car_3: COMPONENT Carry_oper 
        PORT MAP(
            G_prev => g2(i),
            P_prev => p2(i),
            G_Curr => g2(i+4),
            P_Curr => p2(i+4),
            G_out => g3(i+4),
            P_out => p3(i+4));
    END GENERATE;
    
    g3(0) <= g2(0);
    g3(1) <= g2(1);
    g3(2) <= g2(2);
    g3(3) <= g2(3);
    p3(0) <= p2(0);
    p3(1) <= p2(1);
    p3(2) <= p2(2);
    p3(3) <= p2(3);

    carry_gen: FOR i IN 0 TO N-1 GENERATE
        car(i) <= g3(i) OR (C_in AND p3(i));
    END GENERATE;


    C_out <= car(N-1);
    Sum_out(0) <= C_in XOR p_0(0);
    Sum: FOR i IN 1 TO N-1 GENERATE
        Sum_out(i) <= car(i-1) XOR p_0(i);
    END GENERATE;

END Behavioral;