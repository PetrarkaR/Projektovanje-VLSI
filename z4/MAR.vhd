library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MAR is
	generic(n:natural:=8);
	port( 
	    data_bus :inout std_logic_vector(n-1 downto 0);
		address:out std_logic_vector(n-1 downto 0);
		wr_mar,clk,oe_mar, reset:in std_logic);
end entity MAR;

architecture MAR of MAR is
	signal MAR_reg: std_logic_vector(n-1 downto 0); 	
begin
	data_bus<=MAR_reg when oe_mar='1' else (others=>'Z');
	address<=MAR_reg;	
	process(reset, clk)is
	begin
		if (reset='1') then MAR_reg<=(others=>'0');
		elsif (clk'event and clk='1') then
			if wr_mar='1' then
				MAR_reg<=data_bus;
			end if;
		end if;
	end process;	
end architecture MAR;