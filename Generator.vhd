library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Generator is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           G_out : out STD_LOGIC;
           P_out : out STD_LOGIC);
end Generator;

architecture Behavioral of Generator is

begin
P_out <= A XOR B;
G_out <= A AND B;

end Behavioral;