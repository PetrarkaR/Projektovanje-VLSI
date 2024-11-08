library IEEE;
use IEEE.STD_LOGIC_1164.all; 
use IEEE.std_logic_unsigned.all; 
use work.DEFS.all;

entity ROM256X16 is 
	port( address_rom : in std_logic_vector(7 downto 0);
		data_rom : out std_logic_vector(15 downto 0);
		oe_rom : in std_logic);
end entity ROM256x16;

architecture ROM_arch of ROM256x16 is
	signal bus1: std_logic_vector(15 downto 0);	
		-- adrese operanada za mnozenje	 
	constant rm1   : std_logic_vector(7 downto 0) :=x"10"; --OPEARAND1
	constant rm2   : std_logic_vector(7 downto 0) :=x"11"; --OPEARAND2
	constant rmh   : std_logic_vector(7 downto 0) :=x"12"; --AUXILARY register
	constant rel   : std_logic_vector(7 downto 0) :=x"13"; --RESULT LSB PART 
	constant reh   : std_logic_vector(7 downto 0) :=x"14"; --RESULT MSB PART
	constant zero  : std_logic_vector(7 downto 0) :=x"15"; --CONSTANT ZERO	
	
begin
	process(address_rom)is
	begin
		case address_rom is
			when x"00" => bus1<=jmp&"000"&x"20";  -- JMP $10  -- GOTO INI
			when x"01" => bus1<=jmp&"000"&x"30";  -- JMP $30  -- EXT INT 1
			when x"02" => bus1<=jmp&"000"&x"33";  -- JMP $33  -- EXT INT 2 
			when x"03" => bus1<=jmp&"000"&x"36";  -- JMP $36  -- EXT INT 3 
			when x"04" => bus1<=jmp&"000"&x"40";  -- JMP $40  -- EXT INT 4
				
				--INITIALIZATION
			when x"10" => bus1<=nop&"000"&x"05"; -- RM1
			when x"11" => bus1<=nop&"000"&x"05"; -- RM2
			when x"12" => bus1<=nop&"000"&x"00"; -- RMH
			when x"13" => bus1<=nop&"000"&x"00"; -- REL 
			when x"14" => bus1<=nop&"000"&x"00"; -- REH
			when x"15" => bus1<=nop&"000"&x"00"; -- ZERO
				
				-- INFINITE LOOP
			when x"20" => bus1<=nop&"000"&zero;   --       NOP 
			when x"21" => bus1<=jmp&"000"&x"20";  --       JMP $20				
				-- READ OPERAND RM1 
			when x"30" => bus1<=read&"000"&zero;  --       READ	
			when x"31" => bus1<=store&"000"&rm1;  --       STORE RM1
			when x"32" => bus1<=jmp&"000"&x"20";  --       JMP $20
				-- READ OPERAND RM2
			when x"33" => bus1<=read&"000"&zero;  --       READ	
			when x"34" => bus1<=store&"000"&rm2;  --       STORE RM2
			when x"35" => bus1<=jmp&"000"&x"20";  --       JMP $20
				-- WRITE OPERANDS ON LCD
			when x"36" => bus1<=load&"000"&rm1;  --        LOAD RM1
			when x"37" => bus1<=write&"000"&zero;  --      WRITE 
			when x"38" => bus1<=load&"000"&rm2;  --        LOAD RM2
			when x"39" => bus1<=write&"000"&zero;  --      WRITE 
			when x"3A" => bus1<=jmp&"000"&x"20";  --       JMP $20
				--Multiply two numbers at addresses RM1 i RM2
				--The result is stored at REH(msb) i REL(lsb)
			when x"40" => bus1<=load&"000"&zero; --         LOAD $0	
			when x"41" => bus1<=store&"000"&rmh;  --        STORE RMH	  
			when x"42" => bus1<=store&"000"&rel;  --        STORE REL
			when x"43" => bus1<=store&"000"&reh;  --        STORE REH
			when x"44" => bus1<=clrf&"000"&x"00"; -- MUL8A: CLRC  
			when x"45" => bus1<=load&"000"&rm2;  --         LOAD RM2
			when x"46" => bus1<=rorc&"000"&x"00";  --       RORC	 
			when x"47" => bus1<=store&"000"&rm2;  --        STORE RM2	
			when x"48" => bus1<=jnf&"000"&x"4F";  --        JNC MUL8B
			when x"49" => bus1<=load&"000"&rm1;  --         LOAD RM1
			when x"4A" => bus1<=add&"000"&rel;  --          ADD REL
			when x"4B" => bus1<=store&"000"&rel;  --        STORE REL 
			when x"4C" => bus1<=load&"000"&rmh;  --         LOAD RMH
			when x"4D" => bus1<=addc&"000"&reh;  --         ADDC REH
			when x"4E" => bus1<=store&"000"&reh;  --        STORE REH 
			when x"4F" => bus1<=clrf&"000"&x"00"; -- MUL8B: CLRC
			when x"50" => bus1<=load&"000"&rm1;  --         LOAD RM1 
			when x"51" => bus1<=rolc&"000"&x"00";  --       ROLC	 
			when x"52" => bus1<=store&"000"&rm1;  --        STORE RM1 
			when x"53" => bus1<=load&"000"&rmh;  --         LOAD RMH 
			when x"54" => bus1<=rolc&"000"&x"00"; --        ROLC	 
			when x"55" => bus1<=store&"000"&rmh;  --        STORE RMH 
			when x"56" => bus1<=load&"000"&rm2;   --        LOAD RM2  
			when x"57" => bus1<=jnz&"000"&x"44";  --        JNZ MUL8A
				-- WRITE RESULTS ON LCD
			when x"58" => bus1<=load&"000"&reh;   --        LOAD REH
			when x"59" => bus1<=write&"000"&zero;  --       WRITE 
			when x"5A" => bus1<=load&"000"&rel;   --        LOAD REL
			when x"5B" => bus1<=write&"000"&zero;   --      WRITE 
			when x"5C" => bus1<=jmp&"000"&x"20";   --       JMP $20 			 
			when others =>  bus1<=nop&"000"&x"00";  --      NOP
		end case;
	end process;
	data_rom <= bus1 when (oe_rom = '1') else ( others => 'Z' );
end architecture ROM_arch;