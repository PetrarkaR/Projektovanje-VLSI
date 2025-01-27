
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
    
    -- Register definitions matching assembly
    constant REGA_H : std_logic_vector(7 downto 0) := x"10";  -- Higher bits
    constant REGA_M : std_logic_vector(7 downto 0) := x"11";  -- Middle bits
    constant REGA_L : std_logic_vector(7 downto 0) := x"12";  -- Lower bits
    constant REGB : std_logic_vector(7 downto 0) := x"13";    -- Result register
    constant REGX_H : std_logic_vector(7 downto 0) := x"14";  -- Temp X high
    constant REGX_L : std_logic_vector(7 downto 0) := x"15";  -- Temp X low
    constant REGY_H : std_logic_vector(7 downto 0) := x"16";  -- Temp Y high
    constant REGY_L : std_logic_vector(7 downto 0) := x"17";  -- Temp Y low
    constant REGZ_H : std_logic_vector(7 downto 0) := x"18";  -- Result high
    constant REGZ_L : std_logic_vector(7 downto 0) := x"19";  -- Result low
    constant TEMP1 : std_logic_vector(7 downto 0) := x"1A";   -- Temporary register 1
    constant TEMP2 : std_logic_vector(7 downto 0) := x"1B";   -- Temporary register 2
    constant counter : std_logic_vector(7 downto 0) := x"1C"; -- Iteration counter
    constant zeroRef : std_logic_vector(7 downto 0) := x"1D"; -- zeroRef reference
    constant INPUT_H : std_logic_vector(7 downto 0) := x"1E"; -- Input high
    constant INPUT_L : std_logic_vector(7 downto 0) := x"1F"; -- Input low
    constant one : std_logic_vector(7 downto 0) := x"3B"; -- Input low

begin
    process(address_rom)is
    begin
        case address_rom is
            -- Initialization vectors
            when x"00" => bus1 <= jmp & "000" & x"20";  -- Jump to main
            when x"01" => bus1 <= jmp & "000" & x"30";  -- External interrupt 1 - Read INPUT_H
            when x"02" => bus1 <= jmp & "000" & x"33";  -- External interrupt 2 - Read INPUT_L
            when x"03" => bus1 <= jmp & "000" & x"36";  -- External interrupt 3 - Display
            when x"04" => bus1 <= jmp & "000" & x"40";  -- External interrupt 4 - Start calculation

            -- Initialize registers
            when x"20" => bus1<=nop&"000"&zeroRef;   --       NOP 
			when x"21" => bus1<=jmp&"000"&x"20";  --       JMP $20	e

            -- Read INPUT_H
            when x"30" => bus1 <= read & "000" & zeroRef;    
            when x"31" => bus1 <= store & "000" & INPUT_H;
            when x"32" => bus1 <= jmp & "000" & x"20";

            -- Read INPUT_L
            when x"33" => bus1 <= read & "000" & zeroRef;
            when x"34" => bus1 <= store & "000" & INPUT_L;
            when x"35" => bus1 <= jmp & "000" & x"20";

            -- Display current values
            when x"36" => bus1 <= load & "000" & INPUT_H;
            when x"37" => bus1 <= write & "000" & zeroRef;
            when x"38" => bus1 <= load & "000" & INPUT_L;
            when x"39" => bus1 <= write & "000" & zeroRef;
            when x"3A" => bus1 <= jmp & "000" & x"20";
            when x"3B" => bus1 <= loadl & "000" & x"01";
            when x"3C" => bus1 <= store & "000" & one;

			when x"10" => bus1<=nop&"000"&x"00"; -- rxh
			when x"11" => bus1<=nop&"000"&x"00"; -- rxl
			when x"12" => bus1<=nop&"000"&x"00"; -- rc
			when x"13" => bus1<=nop&"000"&x"00"; -- rd
			when x"14" => bus1<=nop&"000"&x"00"; -- rth
			when x"15" => bus1<=nop&"000"&x"00"; -- rtl
			when x"16" => bus1<=nop&"000"&x"00"; -- rnh
			when x"17" => bus1<=nop&"000"&x"00"; -- rnl
			when x"18" => bus1<=nop&"000"&x"00"; -- zeroRef
			when x"19" => bus1<=nop&"000"&x"00"; -- rxh
			when x"1A" => bus1<=nop&"000"&x"00"; -- rxl
			when x"1B" => bus1<=nop&"000"&x"00"; -- rc
			when x"1C" => bus1<=nop&"000"&x"00"; -- rd
			when x"1D" => bus1<=nop&"000"&x"00"; -- rth
			when x"1E" => bus1<=nop&"000"&x"00"; -- rtl
			when x"1F" => bus1<=nop&"000"&x"00"; -- rtl

            
            when x"40" => bus1 <= load & "000" & INPUT_H;    
            when x"41" => bus1 <= store & "000" & REGA_M;    -- REGA_M = INPUT_H
            when x"42" => bus1 <= load & "000" & INPUT_L;
            when x"43" => bus1 <= store & "000" & REGA_L;    -- REGA_L = INPUT_L
            when x"44" => bus1 <= loadl & "000" & x"00";     -- Load counter = 8
            when x"45" => bus1 <= store & "000" & counter;
            when x"46" => bus1 <= jmp & "000" & x"50";       -- Jump to iteration start
            -- regx ja mislim :D
            when x"47" => bus1 <= load & "000" & REGA_H;       -- Jump to iteration start
            when x"48" => bus1 <= store & "000" & REGX_H;       -- Jump to iteration start
            when x"49" => bus1 <= load & "000" & REGA_M;       -- Jump to iteration start
            when x"4A" => bus1 <= store & "000" & REGX_L;       -- Jump to iteration start

            when x"50" => bus1 <= loadl & "000" & x"06";       -- 
            when x"51" => bus1 <= store & "000" & TEMP1;       -- 
            when x"52" => bus1 <= clrf & "000" & x"00";        -- 

            when x"53" => bus1 <= load & "000" & REGX_H;       -- 
            when x"54" => bus1 <= rorc & "000" & x"00";        -- 
            when x"55" => bus1 <= store & "000" & REGX_H;      -- 

            when x"56" => bus1 <= load & "000" & REGX_L;       -- Load RegX_L
            when x"57" => bus1 <= rorc & "000" & x"00";        -- 
            when x"58" => bus1 <= store & "000" & REGX_L;      -- 

        
            when x"59" => bus1 <= load & "000" & TEMP1;        -- 
            when x"5A" => bus1 <= sub_op & "000" & one;        -- 
            when x"5B" => bus1 <= store & "000" & TEMP1;       -- 
            when x"5C" => bus1 <= jnz & "000" & x"53";         -- nazad na rotiranje
            when x"5D" => bus1 <= jmp & "000" & x"66";       -- skoci na regy deo



            -- Construct Y from REGB
            when x"66" => bus1 <= load & "000" & REGB;
            when x"67" => bus1 <= rol_op & "000" & x"00";    -- ROL REGB, 2
            when x"68" => bus1 <= rol_op & "000" & x"00";
            when x"69" => bus1 <= store & "000" & REGY_L;
            when x"6A" => bus1 <= loadl & "000" & x"03";     -- AND with 03
            when x"6B" => bus1 <= and_op & "000" & TEMP1;
            when x"6C" => bus1 <= store & "000" & REGY_H;    -- REGY_H = TEMP1
            when x"6D" => bus1 <= load & "000" & REGY_L;
            when x"6E" => bus1 <= loadl & "000" & x"FC";     -- AND with FC
            when x"6F" => bus1 <= and_op & "000" & REGY_L;
            when x"70" => bus1 <= loadl & "000" & x"01";     -- OR with 01
            when x"71" => bus1 <= or_op & "000" & REGY_L;
            when x"72" => bus1 <= store & "000" & REGY_L;

            -- Two's complement of Y
            when x"73" => bus1 <= load & "000" & REGY_L;
            when x"74" => bus1 <= not_op & "000" & x"00";    -- NOT REGY_L
            when x"75" => bus1 <= store & "000" & REGY_L;
            when x"76" => bus1 <= load & "000" & REGY_H;
            when x"77" => bus1 <= not_op & "000" & x"00";    -- NOT REGY_H
			when x"78" => bus1 <= store & "000" & REGY_H;
			when x"79" => bus1 <= loadl & "000" & x"03";     -- Add 1 to complete 2's complement
            when x"7A" => bus1 <= and_op & "000" & REGY_H;    -- NOT REGY_H
            when x"7B" => bus1 <= store & "000" & REGY_H;
            when x"7C" => bus1 <= loadl & "000" & x"01";     -- Add 1 to complete 2's complement
            when x"7D" => bus1 <= add & "000" & REGY_L;
            when x"7E" => bus1 <= store & "000" & REGY_L;
			when x"7F" => bus1 <= loadl & "000" & x"00";     -- Add 1 to complete 2's complement
            when x"80" => bus1 <= addc & "000" & REGY_H;
            when x"81" => bus1 <= clrf & "000" & x"00";      -- Clear flag

            -- Perform subtraction (X + (!Y+1))
            when x"83" => bus1 <= load & "000" & REGX_L;
            when x"84" => bus1 <= add & "000" & REGY_L;      -- Add negative Y
            when x"85" => bus1 <= store & "000" & REGZ_L;
            when x"86" => bus1 <= load & "000" & REGX_H;
            when x"87" => bus1 <= addc & "000" & REGY_H;     -- Add with carry
            when x"88" => bus1 <= store & "000" & REGZ_H;
            when x"89" => bus1 <= clrf & "000" & x"00";      -- Clear flag

            -- Check for overflow
            when x"8A" => bus1 <= loadl & "000" & x"04";     -- Compare with 4
            when x"8B" => bus1 <= sub_op & "000" & REGZ_H;
            when x"8C" => bus1 <= jz & "000" & x"C2";       -- If not overflow, jump to no_overflow

            -- Overflow handling - Rotate REGA left 2
            when x"8D" => bus1 <= load & "000" & REGA_L;
            when x"8E" => bus1 <= rol_op & "000" & x"00";    -- ROL REGA_L, 2
            when x"8F" => bus1 <= rol_op & "000" & x"00";
            when x"90" => bus1 <= store & "000" & TEMP1;     -- Save REGA_L
			when x"91" => bus1 <= store & "000" & REGA_L;     -- Save REGA_L
            when x"92" => bus1 <= loadl & "000" & x"FC";
            when x"93" => bus1 <= and_op & "000" & REGA_L;
            when x"94" => bus1 <= store & "000" & REGA_L;
            when x"95" => bus1 <= loadl & "000" & x"03";     -- Get overflow bits
            when x"96" => bus1 <= and_op & "000" & TEMP1;
            when x"97" => bus1 <= store & "000" & TEMP1;

            -- za mid
            when x"98" => bus1 <= load & "000" & REGA_M;
            when x"99" => bus1 <= rol_op & "000" & x"00";    -- ROL REGA_M, 2
            when x"9A" => bus1 <= rol_op & "000" & x"00";
            when x"9B" => bus1 <= store & "000" & TEMP2;
			when x"9C" => bus1 <= store & "000" & REGA_M;
            when x"9D" => bus1 <= loadl & "000" & x"FC";
            when x"9E" => bus1 <= and_op & "000" & REGA_M;
            when x"9F" => bus1 <= or_op & "000" & TEMP1;     -- Add overflow from lower
            when x"A0" => bus1 <= store & "000" & REGA_M;
            when x"A1" => bus1 <= loadl & "000" & x"03";     -- Get overflow bits
            when x"A2" => bus1 <= and_op & "000" & TEMP2;
            when x"A3" => bus1 <= store & "000" & TEMP2;

            -- ovo je za high
            when x"A4" => bus1 <= load & "000" & REGA_H;
            when x"A5" => bus1 <= rol_op & "000" & x"00";    -- ROL REGA_H, 2
            when x"A6" => bus1 <= rol_op & "000" & x"00";
			when x"A7" => bus1 <= store & "000" & REGA_H;
            when x"A8" => bus1 <= loadl & "000" & x"FC";
            when x"A9" => bus1 <= and_op & "000" & REGA_H;
            when x"AA" => bus1 <= or_op & "000" & TEMP2;     -- Add overflow from middle
            when x"AB" => bus1 <= store & "000" & REGA_H;

            -- Update REGB based on overflow
            when x"AC" => bus1 <= load & "000" & REGB;
            when x"AD" => bus1 <= rol_op & "000" & x"00";    -- ROL REGB, 1
            when x"AE" => bus1 <= store & "000" & REGB;
            when x"AF" => bus1 <= jmp & "000" & x"B1";       -- Jump to counter decrement

            when x"C2" => bus1 <= load & "000" & REGB;
            when x"C3" => bus1 <= rol_op & "000" & x"00";
			when x"C4" => bus1 <= store & "000" & REGB;
            when x"C5" => bus1 <= loadl & "000" & x"01";     -- OR REGB, 1
            when x"C6" => bus1 <= or_op & "000" & REGB;
			when x"C7" => bus1 <= store & "000" & REGB;
            when x"C8" => bus1 <= load & "000" & REGZ_L;
            when x"C9" => bus1 <= store & "000" & REGA_H;

            when x"CA" => bus1 <= loadl & "000" & x"02";      -- Load immediate value 2
            when x"CB" => bus1 <= store & "000" & TEMP1;      -- Store counter in TEMP1
			when x"CC" => bus1 <= clrf & "000" & x"00";       -- Clear flags

            when x"CD" => bus1 <= load & "000" & REGA_L;      -- Load REGA_L
            when x"CE" => bus1 <= rolc & "000" & x"00";       -- Rotate left through carry
            when x"CF" => bus1 <= store & "000" & REGA_L;     -- Store REGA_L

            when x"D0" => bus1 <= load & "000" & REGA_M;      -- Load REGA_M
            when x"D1" => bus1 <= rolc & "000" & x"00";       -- Rotate left through carry
            when x"D2" => bus1 <= store & "000" & REGA_M;     -- Store REGA_M

            when x"D3" => bus1 <= load & "000" & TEMP1;       -- Load counter
            when x"D4" => bus1 <= sub_op & "000" & one;       -- Decrement counter
            when x"D5" => bus1 <= store & "000" & TEMP1;      -- Store counter

            when x"D6" => bus1 <= jnz & "000" & x"CC";        -- Jump to loop start if counter != 0
            when x"D7" => bus1 <= jmp & "000" & x"D8";        -- Continue to next instruction
            when x"D8" => bus1 <= jmp & "000" & x"B1";       -- Jump to counter decrement

            -- debug i loop deo
			when x"B1" => bus1 <= load & "000" & REGA_H;
			when x"B2" => bus1 <= load & "000" & REGA_M;
			when x"B3" => bus1 <= load & "000" & REGA_L;
			when x"B4" => bus1 <= load & "000" & REGX_H;
			when x"B5" => bus1 <= load & "000" & REGX_L;
			when x"B6" => bus1 <= load & "000" & REGY_H;
			when x"B7" => bus1 <= load & "000" & REGY_L;
			when x"B8" => bus1 <= load & "000" & REGZ_H;
			when x"B9" => bus1 <= load & "000" & REGZ_L;
			when x"BA" => bus1 <= load & "000" & REGB;
			when x"BB" => bus1 <= loadl & "000" & x"01";
			when x"BC" => bus1 <= add & "000" & counter;
			when x"BD" => bus1 <= store & "000" & counter;
			when x"BE" => bus1 <= loadl & "000" & x"08";
			when x"BF" => bus1 <= sub_op & "000" & counter;
            --adresa pocetka
			when x"C0" => bus1 <= jnz & "000" & x"47";
            --posle da skoci da stampa na display
			when x"C1" => bus1 <= jz & "000" & x"E7";



			



			-- Loop back

            -- Write Results to LCD
            when x"E8" => bus1 <= load & "000" & INPUT_L;
            when x"E9" => bus1 <= write & "000" & zeroRef;
            when x"EA" => bus1 <= load & "000" & REGB;
            when x"EB" => bus1 <= write & "000" & zeroRef;
            when x"EC" => bus1 <= jmp & "000" & x"20";
			when others =>  bus1<=nop&"000"&x"00";  --      NOP
		end case;
	end process;
	data_rom <= bus1 when (oe_rom = '1') else ( others => 'Z' );
end architecture ROM_arch;










