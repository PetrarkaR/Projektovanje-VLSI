library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Package Carry_Tree_Adder_pkg is

    Component Generator is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               G_out : out STD_LOGIC;
               P_out : out STD_LOGIC);
     end component;
     
     Component Carry_oper is
            Port ( G_prev : in STD_LOGIC;
            G_curr : in STD_LOGIC;
            P_prev : in STD_LOGIC;
            P_curr : in STD_LOGIC;
            G_out : out STD_LOGIC;
            P_out : out STD_LOGIC);
     end component;

end Carry_Tree_Adder_pkg;
