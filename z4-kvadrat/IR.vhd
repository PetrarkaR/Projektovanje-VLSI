library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity IR is 
	port( data_in:in std_logic_vector(7 downto 0);
		data_out:out std_logic_vector(7 downto 0);
		reset,clk, wr_IR:in std_logic);
end IR;

architecture IR of IR is 
	signal IR_reg: std_logic_vector(7 downto 0);	
begin 	
	process(reset, clk)is
	begin
		if reset='1' then  IR_reg<=(others=>'0');
		elsif (clk'event and clk='1') then
			if wr_IR='1' then IR_reg<=data_in;
			end if;
		end if;
	end process;
	data_out<=IR_reg;
end IR;