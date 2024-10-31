library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

Package adder_pkg is

    Component HA is
        Port ( A : in STD_LOGIC;
               B : in STD_LOGIC;
               S : out STD_LOGIC;
               C : out STD_LOGIC);
     end component;
     
     Component FA is
            Port ( A : in STD_LOGIC;
            B : in STD_LOGIC;
            CIN : in STD_LOGIC;
            S : out STD_LOGIC;
            C : out STD_LOGIC);
     end component;

end adder_pkg;
