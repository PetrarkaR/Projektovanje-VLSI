library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use work.DEFS.all;

entity ALU is
	port (  
		acc_bus, load_acc , reset, clk : in std_logic;
		sel_op : in std_logic_vector(4 downto 0);
		data_bus : inout std_logic_vector(7 downto 0);
		flag,zero  : out std_logic );	
end ALU;

architecture ALU of ALU is
	signal acc : std_logic_vector(8 downto 0);
	constant allzero : std_logic_vector(7 downto 0):=( others => '0');	
	
begin  
	process	(clk,reset) is
	begin
		if (reset = '0') then
			acc <= ( others => '0');
		elsif (clk'event and clk='1') then 
			if load_acc='1' then  
				case sel_op is
					when load => acc<=acc(8)& data_bus(7 downto 0);	-- operacija LOAD
					when setf => acc(8)<='1';	-- operacija SET FLAG
					when clrf=> acc(8)<='0';	-- operacija CLR FLAG
					when add=> acc(8 downto 0)<=('0'&acc(7 downto 0))+('0'&data_bus(7 downto 0));-- operacija ADD
					when addc=> acc(8 downto 0)<=('0'&acc(7 downto 0))+('0'& data_bus(7 downto 0))+(x"00"&acc(8));-- operacija ADDC
					when sub_op=> acc(8 downto 0)<=('0'&acc(7 downto 0))- ('0'&data_bus(7 downto 0));-- operacija SUB
					when subc=> acc(8 downto 0)<=('0'&acc(7 downto 0))-('0'& data_bus(7 downto 0))-(x"00"&acc(8));-- operacija SUBC
					when rol_op=> acc(7 downto 0)<=acc(6 downto 0)&acc(7);--ROL
					when rolc=> acc(8 downto 0)<=acc(7 downto 0)&acc(8);--ROLC
					when ror_op=> acc(7 downto 0)<=acc(0)&acc(7 downto 1);--ROR
					when rorc=> acc(8 downto 0)<=acc(0)&acc(8 downto 1);--RORC
					when and_op=> acc(7 downto 0)<=acc(7 downto 0)and data_bus(7 downto 0);-- operacija AND
					when or_op=> acc(7 downto 0)<=acc(7 downto 0)or data_bus(7 downto 0);-- operacija OR
					when xor_op=> acc(7 downto 0)<=acc(7 downto 0)xor data_bus(7 downto 0);-- operacija XOR
					when not_op=> acc(7 downto 0)<=not acc(7 downto 0);-- operacija NOT	
					when loadl => acc<=acc(8)& data_bus(7 downto 0); -- operacija LOADL
					when read =>  acc<=acc(8)& data_bus(7 downto 0); -- operacija READ
					when others =>	null;
				end case;
			end if;
			
		end if;
		
	end process;	
	
	
	data_bus <= acc(7 downto 0) when (acc_bus='1') else (others=>'Z');
	zero <= '1' when (acc(7 downto 0) = allzero) else '0';
	flag <= acc(8);
	
end ALU;
