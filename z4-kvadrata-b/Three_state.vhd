

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Three_state is
	 port(
		 Oe : in STD_LOGIC;
		 DataIN : in STD_LOGIC_VECTOR(7 downto 0);
		 DataOUT : out STD_LOGIC_VECTOR(7 downto 0)
	     );
end Three_state;


architecture Three_state of Three_state is
begin
  DataOUT<=DataIN when Oe='1' else (others=>'Z');

end Three_state;
