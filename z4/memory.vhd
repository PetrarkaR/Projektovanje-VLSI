LIBRARY ieee;
USE ieee.std_logic_1164.all;

LIBRARY altera_mf;
USE altera_mf.all;

ENTITY memory IS
	PORT
	(   en_ram, oe_ram, wr_ram: IN STD_LOGIC;
	    address		: IN STD_LOGIC_VECTOR (7 DOWNTO 0);	--14
		clk		: IN STD_LOGIC  := '1';
		data		: INOUT STD_LOGIC_VECTOR (15 DOWNTO 0)	
	);
END memory;


ARCHITECTURE SYN OF memory IS

SIGNAL sub_wire0	: STD_LOGIC_VECTOR (15 DOWNTO 0);
signal clock: std_logic;
signal q : STD_LOGIC_VECTOR (15 DOWNTO 0);
   
	COMPONENT altsyncram
	GENERIC (
		clock_enable_input_a		: STRING;
		clock_enable_output_a		: STRING;
		init_file		: STRING;
		intended_device_family		: STRING;
		lpm_hint		: STRING;
		lpm_type		: STRING;
		numwords_a		: NATURAL;
		operation_mode		: STRING;
		outdata_aclr_a		: STRING;
		outdata_reg_a		: STRING;
		power_up_uninitialized		: STRING;
		widthad_a		: NATURAL;
		width_a		: NATURAL;
		width_byteena_a		: NATURAL
	);
	PORT (
			address_a	: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
			clock0	: IN STD_LOGIC ;
			data_a	: IN STD_LOGIC_VECTOR (15 DOWNTO 0);
			wren_a	: IN STD_LOGIC ;
			q_a	: OUT STD_LOGIC_VECTOR (15 DOWNTO 0)
	);
	END COMPONENT;

BEGIN
	
	clock<= (not en_ram) nor clk; 
	q <= sub_wire0(15 DOWNTO 0);
	data<=q when  oe_ram='1' else (others=>'Z');

	altsyncram_component : altsyncram
	GENERIC MAP (
		clock_enable_input_a => "BYPASS",
		clock_enable_output_a => "BYPASS",
		init_file => "BYPASS",
		intended_device_family => "Cyclone II",
		lpm_hint => "ENABLE_RUNTIME_MOD=NO",
		lpm_type => "altsyncram",
		numwords_a => 256, --32768,
		operation_mode => "SINGLE_PORT",
		outdata_aclr_a => "NONE",
		outdata_reg_a => "UNREGISTERED",
		power_up_uninitialized => "FALSE",
		widthad_a => 8,  --15,
		width_a => 16,    --12
		width_byteena_a => 1
	)
	PORT MAP (
		address_a => address,
		clock0 => clock,
		data_a => data,
		wren_a => wr_ram,
		q_a => sub_wire0
	);

END SYN;