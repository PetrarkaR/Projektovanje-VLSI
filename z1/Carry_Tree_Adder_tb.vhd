LIBRARY IEEE;
USE IEEE.Std_logic_1164.ALL;
USE IEEE.Numeric_Std.ALL;

ENTITY Kogge_Stone_Adder_tb IS
END;

ARCHITECTURE bench OF Kogge_Stone_Adder_tb IS

  COMPONENT Kogge_Stone_Adder
    PORT (
      A : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      B : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      C_in : IN STD_LOGIC := '0';
      C_out : OUT STD_LOGIC;
      Sum_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
  END COMPONENT;

  SIGNAL A : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL B : STD_LOGIC_VECTOR(7 DOWNTO 0);
  SIGNAL C_in : STD_LOGIC := '0';
  SIGNAL C_out : STD_LOGIC;
  SIGNAL Sum_out : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

  uut : Kogge_Stone_Adder PORT MAP(
    A => A,
    B => B,
    C_in => C_in, 
    C_out => C_out,
    Sum_out => Sum_out);


  stimulus : PROCESS
  BEGIN

    C_in <= '1';
    A <= "00001001";
    B <= "00000000";
    WAIT FOR 20 ns;

    C_in <= '0';
    A <= "10000000";
    B <= "10000000";
    WAIT FOR 20 ns;

    C_in <= '0';
    A <= "11111111"; -- 255
    B <= "11111111"; -- 255
    WAIT FOR 20 ns;

    C_in <= '0';
    A <= "00000000"; -- 0
    B <= "00000000"; -- 0
    WAIT FOR 20 ns;

    C_in <= '0';
    A <= "11110000"; -- -16
    B <= "00001111"; -- 15
    WAIT FOR 20 ns;
    C_in <= '0';
    A <= "11110000"; -- -16
    B <= "00001111"; -- 15
    WAIT FOR 20 ns;

    C_in <= '0';
    A <= "10101010"; -- 170
    B <= "01010101"; -- 85
    WAIT FOR 20 ns;

-- novo
    a <= "00000000";
    b <= "00000000";
    c_in <= '0';
    WAIT FOR 20 ns;

    a <= "00000011";
    b <= "00000111";
    c_in <= '1';
    WAIT FOR 20 ns;

    a <= "00000101";
    b <= "00101010";
    c_in <= '1';
    WAIT FOR 20 ns;

    -- B.J.: nisi dovoljno testirao, ovo ne radi

    a <= "00001011";
    b <= "00110110";
    c_in <= '0';
    WAIT FOR 20 ns;

    WAIT;
  END PROCESS;

END;