library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.Carry_Tree_Adder_pkg.all;

entity Kogge_Stone_Adder is
    generic (N : integer := 8); -- Define N as a generic parameter
    Port  (A : in std_logic_vector(N-1 downto 0);
           B : in std_logic_vector(N-1 downto 0);
           C_in : in STD_LOGIC := '0';
           C_out : out STD_LOGIC;
           Sum_out : out STD_LOGIC_VECTOR(N-1 downto 0));
end Kogge_Stone_Adder;

architecture Behavioral of Kogge_Stone_Adder is

    signal g_0 : std_logic_vector(N-1 downto 0);
    signal p_0 : std_logic_vector(N-1 downto 0);
    
    signal g1 : std_logic_vector(N-1 downto 0);
    signal p1 : std_logic_vector(N-1 downto 0);
    
    signal g2 : std_logic_vector(N-1 downto 0);
    signal p2 : std_logic_vector(N-1 downto 0);
    
    signal g3 : std_logic_vector(N-1 downto 0);
    signal p3 : std_logic_vector(N-1 downto 0);
    
    signal car : std_logic_vector(N-1 downto 0);

begin
   
   start_signals: 
        for i in 0 to N-1 generate
            map_gen_0: component Generator port map(A => A(i), B => B(i), G_out => g_0(i), P_out => p_0(i));
        end generate;
    

    g1(0) <= g_0(0);
    p1(0) <= p_0(0);
    
    Stage_1 : 
        for i in 0 to N-2 generate
            map_car_1: component Carry_oper port map (G_prev => g_0(i),
             P_prev => p_0(i), 
             G_Curr => g_0(i+1), 
             P_Curr => p_0(i+1), 
             P_out => p1(i+1), 
             G_out => g1(i+1));
        end generate;
     
     Storing_1:
        for i in 0 to N-3 generate
            g2(i) <= g1(i);
            p2(i) <= p1(i);
        end generate;
     
     Stage_2 :
        for i in 2 to N-3 generate
            map_car_2 : component Carry_oper port map (G_prev => g1(i), 
            P_prev => p1(i), 
            G_Curr => g1(i+2), 
            P_Curr => p1(i+2), 
            P_out => p2(i+2), 
            G_out => g2(i+2));
        end generate;
     
     Storing_3 :
        for i in 0 to N-1 generate
            g3(i) <= g2(i);
            p3(i) <= p2(i); 
        end generate;
     
     carry_gen :
        for i in 0 to N-1 generate
            car(i) <= g3(i) OR (C_in AND p3(i));
        end generate;
        
     C_out <= car(N-1);
     Sum_out(0) <= C_in XOR p_0(0);
     
     Sum :
        for i in 1 to N-1 generate
            Sum_out(i) <= car(i-1) XOR p_0(i);
        end generate;
    
end Behavioral;
