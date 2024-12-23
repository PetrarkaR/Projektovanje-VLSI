library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_UNSIGNED.all;

entity Debounce is
	port( Taster, reset_req: in std_logic;
	      clk, reset: in std_logic;
	      Int_req: out std_logic);
end Debounce;

--}} End of automatically maintained section

architecture Debounce of Debounce is 
   signal counter: std_logic_vector(19 downto 0);
   signal Taster1, Taster2, Enable: std_logic;
begin
    Taster2<=Taster and (not Taster1) and Enable;
	process(reset, clk) is
	begin	 
		if reset='1' then
			counter<=(others=>'0');
			Taster1<='0';
			Enable<='0';
			Int_req<='0';
		elsif clk'event and clk='1' then
			Taster1<=Taster;
			Enable<='0';
			if (Taster2='1') then	
				counter<=(others=>'0');
				Int_req<='1';
			elsif 	(counter=x"0000F") then
				counter<=x"0000F";
				Enable<='1';
			else counter<=counter+'1';
			end if;
			if (reset_req='1') then Int_req<='0';
			end if;	
		end if;	
	end process;
	

end Debounce;
