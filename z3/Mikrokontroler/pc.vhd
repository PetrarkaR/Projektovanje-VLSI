library IEEE;
use IEEE.STD_LOGIC_1164.all;  
use IEEE.STD_LOGIC_UNSIGNED.all; 

entity pc is
	port(		
		reset, clk,	int_req, oe_pc, 
		wr_pc, 
		ready : in STD_LOGIC;
		int_code : in STD_LOGIC_VECTOR(1 downto 0);		
		data_bus : inout STD_LOGIC_VECTOR(7 downto 0);
		reset_int_req: out STD_LOGIC
		);
end entity pc;

architecture pc_arch of pc is 
	signal pc_val: std_logic_vector(7 downto 0); 	
begin
	process (reset, clk) is
	begin 		
		if reset='1' then 
			pc_val<=(others=>'0');
			reset_int_req<='0';
		elsif clk'event and clk='1' then
			reset_int_req<='0';
			if ready='1' then
				if int_req='1'  then
					reset_int_req<='1';
					case (int_code) is
						when "00" => pc_val<="00000001"; 
						when "01" => pc_val<="00000010";
						when "10" => pc_val<="00000011";
						when others=> pc_val<="00000100";
					end case;			
				elsif (wr_pc='1') then pc_val <= data_bus;
				else  pc_val <= pc_val + '1';	
				end if;				
			end if;	
		end if;		
	end process;	
	data_bus <= pc_val when (oe_pc = '1') else (others=>'Z');
end architecture pc_arch;