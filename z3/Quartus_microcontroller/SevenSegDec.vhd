library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity SevenSegDec is
	port(
		Data: in STD_LOGIC_VECTOR(7 downto 0);
		a2, b2, c2, d2, e2, f2, g2, h2: out std_LOGIC;		
		a1, b1, c1, d1, e1, f1, g1, h1: out std_LOGIC);
end SevenSegDec;

--}} End of automatically maintained section

architecture SevenSegDec of SevenSegDec is	
	signal pom2, pom1: std_logic_vector(7 downto 0);
	signal a, b: STD_LOGIC_VECTOR(3 downto 0);
begin
	
	b<=Data(7 downto 4);
	pom2<= "11111100" when b="0000" else
	"01100000" when b="0001" else
	"11011010" when b="0010" else
	"11110010" when b="0011" else	
	"01100110" when b="0100" else
	"10110110" when b="0101" else
	"10111110" when b="0110" else
	"11100000" when b="0111" else	
	"11111110" when b="1000" else
	"11110110" when b="1001" else
	"11101111" when b="1010" else
	"11111111" when b="1011" else	
	"10011101" when b="1100" else
	"11111101" when b="1101" else
	"10011111" when b="1110" else
	"10001111";
	a1<=not pom1(7);
	b1<=not pom1(6);
	c1<=not pom1(5);
	d1<=not pom1(4);
	e1<=not pom1(3);
	f1<=not pom1(2);
	g1<=not pom1(1);
	h1<='1';
	
	a<=Data(3 downto 0); 	   
	pom1<= "11111100" when a="0000" else
	"01100000" when a="0001" else
	"11011010" when a="0010" else
	"11110010" when a="0011" else	
	"01100110" when a="0100" else
	"10110110" when a="0101" else
	"10111110" when a="0110" else
	"11100000" when a="0111" else	
	"11111110" when a="1000" else
	"11110110" when a="1001" else
	"11101111" when a="1010" else
	"11111111" when a="1011" else	
	"10011101" when a="1100" else
	"11111101" when a="1101" else
	"10011111" when a="1110" else
	"10001111";	
	a2<=not pom2(7);
	b2<=not pom2(6);
	c2<=not pom2(5);
	d2<=not pom2(4);
	e2<=not pom2(3);
	f2<=not pom2(2);
	g2<=not pom2(1);
	h2<='1';
	
end SevenSegDec;