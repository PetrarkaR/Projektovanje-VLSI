LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

PACKAGE Carry_Tree_Adder_pkg IS

       COMPONENT Generator IS
              PORT (
                     A : IN STD_LOGIC;
                     B : IN STD_LOGIC;
                     G_out : OUT STD_LOGIC;
                     P_out : OUT STD_LOGIC);
       END COMPONENT;

       COMPONENT Carry_oper IS
              PORT (
                     G_prev : IN STD_LOGIC;
                     G_curr : IN STD_LOGIC;
                     P_prev : IN STD_LOGIC;
                     P_curr : IN STD_LOGIC;
                     G_out : OUT STD_LOGIC;
                     P_out : OUT STD_LOGIC);
       END COMPONENT;

END Carry_Tree_Adder_pkg;