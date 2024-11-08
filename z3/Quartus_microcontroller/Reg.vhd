

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Reg is
	port(
		Clk : in STD_LOGIC;
		Reset : in STD_LOGIC;
		Wr_en : in STD_LOGIC;
		Din : in STD_LOGIC_VECTOR(7 downto 0);
		Q : out STD_LOGIC_VECTOR(7 downto 0)
		);
end Reg;

--}} End of automatically maintained section

architecture Reg of Reg is
begin
	
	process (reset, clk) is
	begin 
		if Reset='0' then Q<=(others=>'0');
		elsif clk'event and clk='1' then
			if Wr_en='1' then
				Q<=Din;
			end if;
		end if;
	end process;			 
end Reg;
