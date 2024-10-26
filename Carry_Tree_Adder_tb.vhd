library IEEE;
use IEEE.Std_logic_1164.all;
use IEEE.Numeric_Std.all;

entity Kogge_Stone_Adder_tb is
end;

architecture bench of Kogge_Stone_Adder_tb is

  component Kogge_Stone_Adder
      Port  (A : in std_logic_vector(7 downto 0);
             B : in std_logic_vector(7 downto 0);
             C_in : in STD_LOGIC := '0';
             C_out : out STD_LOGIC;
             Sum_out : out STD_LOGIC_VECTOR(7 downto 0));
  end component;

  signal A: std_logic_vector(7 downto 0);
  signal B: std_logic_vector(7 downto 0);
  signal C_in: STD_LOGIC := '0';
  signal C_out: STD_LOGIC;
  signal Sum_out: STD_LOGIC_VECTOR(7 downto 0);

begin

  uut: Kogge_Stone_Adder port map ( A       => A,
                                    B       => B,
                                    C_in    => C_in,
                                    C_out   => C_out,
                                    Sum_out => Sum_out );


stimulus: process
begin
  C_in<='0';
  A <= "00001101";
  B <= "00001100";
  wait for 20 ns;

  C_in<='1';
  A <= "00001001";
  B <= "00000001";
  wait for 20 ns;

  C_in<='1';
  A<="00001001";
  B<="00000000";
  wait for 20 ns;

  C_in<='0';
  A<="10000000";
  B<="10000001";
  wait for 20 ns;

  wait; 
end process;

end;