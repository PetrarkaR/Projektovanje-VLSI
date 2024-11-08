-------------------------------------------------------------------------------
--
-- Title       : microcontroller
-- Design      : proba
-- Author      : Microsoft
-- Company     : Microsoft
--
-------------------------------------------------------------------------------
--
-- File        : d:\Korisnici\Borko\fakultet\VHDL\proba\proba\compile\microcontroller.vhd
-- Generated   : Sun Dec 23 08:33:32 2012
-- From        : d:\Korisnici\Borko\fakultet\VHDL\proba\proba\src\microcontroller.bde
-- By          : Bde2Vhdl ver. 2.6
--
-------------------------------------------------------------------------------
--
-- Description : 
--
-------------------------------------------------------------------------------
-- Design unit header --
library IEEE;
use IEEE.std_logic_1164.all;


-- other libraries declarations
library proba;

entity microcontroller is
  port(
       Taster : in STD_LOGIC;
       clk : in STD_LOGIC;
       reset : in STD_LOGIC;
       Int_code : in STD_LOGIC_VECTOR(1 downto 0);
       PORT_IN : in STD_LOGIC_VECTOR(7 downto 0);
       Seg0 : out STD_LOGIC_VECTOR(7 downto 0);
       Seg1 : out STD_LOGIC_VECTOR(7 downto 0);
       Seg2 : out STD_LOGIC_VECTOR(7 downto 0);
       Seg3 : out STD_LOGIC_VECTOR(7 downto 0)
  );
end microcontroller;

architecture microcontroller of microcontroller is

---- Component declarations -----

component ALU
  port (
       acc_bus : in STD_LOGIC;
       clk : in STD_LOGIC;
       load_acc : in STD_LOGIC;
       reset : in STD_LOGIC;
       sel_op : in STD_LOGIC_VECTOR(4 downto 0);
       flag : out STD_LOGIC;
       zero : out STD_LOGIC;
       data_bus : inout STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component controller
  port (
       IR_out : in STD_LOGIC_VECTOR(7 downto 0);
       clk : in STD_LOGIC;
       flag_f : in STD_LOGIC;
       flag_z : in STD_LOGIC;
       reset : in STD_LOGIC;
       acc_bus : out STD_LOGIC;
       data_mar : out STD_LOGIC;
       data_pc : out STD_LOGIC;
       en_ram : out STD_LOGIC;
       load_acc : out STD_LOGIC;
       mar_data : out STD_LOGIC;
       oe_ram : out STD_LOGIC;
       oe_reg : out STD_LOGIC;
       oe_rom : out STD_LOGIC;
       pc_data : out STD_LOGIC;
       ready : out STD_LOGIC;
       wr_ir : out STD_LOGIC;
       wr_ram : out STD_LOGIC;
       wr_reg : out STD_LOGIC
  );
end component;
component debounce
  port (
       Taster : in STD_LOGIC;
       clk : in STD_LOGIC;
       reset : in STD_LOGIC;
       reset_req : in STD_LOGIC;
       Int_req : out STD_LOGIC
  );
end component;
component ir
  port (
       clk : in STD_LOGIC;
       data_in : in STD_LOGIC_VECTOR(7 downto 0);
       reset : in STD_LOGIC;
       wr_IR : in STD_LOGIC;
       data_out : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component MAR
  generic(
       n : NATURAL := 8
  );
  port (
       clk : in STD_LOGIC;
       oe_mar : in STD_LOGIC;
       reset : in STD_LOGIC;
       wr_mar : in STD_LOGIC;
       address : out STD_LOGIC_VECTOR(n-1 downto 0);
       data_bus : inout STD_LOGIC_VECTOR(n-1 downto 0)
  );
end component;
component memory
  port (
       address : in STD_LOGIC_VECTOR(7 downto 0);
       clk : in STD_LOGIC := '1';
       en_ram : in STD_LOGIC;
       oe_ram : in STD_LOGIC;
       wr_ram : in STD_LOGIC;
       data : inout STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component pc
  port (
       clk : in STD_LOGIC;
       int_code : in STD_LOGIC_VECTOR(1 downto 0);
       int_req : in STD_LOGIC;
       oe_pc : in STD_LOGIC;
       ready : in STD_LOGIC;
       reset : in STD_LOGIC;
       wr_pc : in STD_LOGIC;
       reset_int_req : out STD_LOGIC;
       data_bus : inout STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component Reg
  port (
       Clk : in STD_LOGIC;
       Din : in STD_LOGIC_VECTOR(7 downto 0);
       Reset : in STD_LOGIC;
       Wr_en : in STD_LOGIC;
       Q : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;
component ROM256X16 --ROM_ROOT--ROM_1--ROMBCD2bin--ROM_Bin_to_BCD_uC
  port (
       address_rom : in STD_LOGIC_VECTOR(7 downto 0);
       oe_rom : in STD_LOGIC;
       data_rom : out STD_LOGIC_VECTOR(15 downto 0)
  );
end component;
component sevensegdec
  port (
       Data : in STD_LOGIC_VECTOR(7 downto 0);
       a1 : out STD_LOGIC;
       a2 : out STD_LOGIC;
       b1 : out STD_LOGIC;
       b2 : out STD_LOGIC;
       c1 : out STD_LOGIC;
       c2 : out STD_LOGIC;
       d1 : out STD_LOGIC;
       d2 : out STD_LOGIC;
       e1 : out STD_LOGIC;
       e2 : out STD_LOGIC;
       f1 : out STD_LOGIC;
       f2 : out STD_LOGIC;
       g1 : out STD_LOGIC;
       g2 : out STD_LOGIC;
       h1 : out STD_LOGIC;
       h2 : out STD_LOGIC
  );
end component;
component three_state
  port (
       DataIN : in STD_LOGIC_VECTOR(7 downto 0);
       Oe : in STD_LOGIC;
       DataOUT : out STD_LOGIC_VECTOR(7 downto 0)
  );
end component;

---- Signal declarations used on the diagram ----

signal acc_data : STD_LOGIC;
signal data_mar : STD_LOGIC;
signal data_pc : STD_LOGIC;
signal en_ram : STD_LOGIC;
signal flag_f : STD_LOGIC;
signal flag_z : STD_LOGIC;
signal int_req : STD_LOGIC;
signal load_acc : STD_LOGIC;
signal mar_data : STD_LOGIC;
signal oe_reg : STD_LOGIC;
signal pc_data : STD_LOGIC;
signal ram_data : STD_LOGIC;
signal ready : STD_LOGIC;
signal reset_req : STD_LOGIC;
signal rom_data : STD_LOGIC;
signal wr_ir : STD_LOGIC;
signal wr_ram : STD_LOGIC;
signal Wr_reg : STD_LOGIC;
signal address : STD_LOGIC_VECTOR (7 downto 0);
signal Data : STD_LOGIC_VECTOR (15 downto 0);
signal IRout : STD_LOGIC_VECTOR (7 downto 0);
signal Reg1 : STD_LOGIC_VECTOR (7 downto 0);
signal Reg2 : STD_LOGIC_VECTOR (7 downto 0);

begin

----  Component instantiations  ----

U1 : memory
  port map(
       address => address,
       clk => clk,
       data => Data,
       en_ram => en_ram,
       oe_ram => ram_data,
       wr_ram => wr_ram
  );

U10 : sevensegdec
  port map(
       Data => Reg1,
       a1 => Seg0(0),
       a2 => Seg1(0),
       b1 => Seg0(1),
       b2 => Seg1(1),
       c1 => Seg0(2),
       c2 => Seg1(2),
       d1 => Seg0(3),
       d2 => Seg1(3),
       e1 => Seg0(4),
       e2 => Seg1(4),
       f1 => Seg0(5),
       f2 => Seg1(5),
       g1 => Seg0(6),
       g2 => Seg1(6),
       h1 => Seg0(7),
       h2 => Seg1(7)
  );

U11 : Reg
  port map(
       Clk => Clk,
       Din => Reg1,
       Q => Reg2,
       Reset => Reset,
       Wr_en => Wr_reg
  );

U12 : Reg
  port map(
       Clk => Clk,
       Din(0) => Data(0),
       Din(1) => Data(1),
       Din(2) => Data(2),
       Din(3) => Data(3),
       Din(4) => Data(4),
       Din(5) => Data(5),
       Din(6) => Data(6),
       Din(7) => Data(7),
       Q => Reg1,
       Reset => Reset,
       Wr_en => Wr_reg
  );

U13 : three_state
  port map(
       DataOUT(0) => Data(0),
       DataOUT(1) => Data(1),
       DataOUT(2) => Data(2),
       DataOUT(3) => Data(3),
       DataOUT(4) => Data(4),
       DataOUT(5) => Data(5),
       DataOUT(6) => Data(6),
       DataOUT(7) => Data(7),
       DataIN => PORT_IN,
       Oe => oe_reg
  );

U2 : controller
  port map(
       IR_out => IRout,
       acc_bus => acc_data,
       clk => clk,
       data_mar => data_mar,
       data_pc => data_pc,
       en_ram => en_ram,
       flag_f => flag_f,
       flag_z => flag_z,
       load_acc => load_acc,
       mar_data => mar_data,
       oe_ram => ram_data,
       oe_reg => oe_reg,
       oe_rom => rom_data,
       pc_data => pc_data,
       ready => ready,
       reset => reset,
       wr_ir => wr_ir,
       wr_ram => wr_ram,
       wr_reg => wr_reg
  );

U3 : ALU
  port map(
       data_bus(0) => Data(0),
       data_bus(1) => Data(1),
       data_bus(2) => Data(2),
       data_bus(3) => Data(3),
       data_bus(4) => Data(4),
       data_bus(5) => Data(5),
       data_bus(6) => Data(6),
       data_bus(7) => Data(7),
       sel_op(0) => IRout(3),
       sel_op(1) => IRout(4),
       sel_op(2) => IRout(5),
       sel_op(3) => IRout(6),
       sel_op(4) => IRout(7),
       acc_bus => acc_data,
       clk => clk,
       flag => flag_f,
       load_acc => load_acc,
       reset => reset,
       zero => flag_z
  );

U4 : ir
  port map(
       data_in(0) => Data(8),
       data_in(1) => Data(9),
       data_in(2) => Data(10),
       data_in(3) => Data(11),
       data_in(4) => Data(12),
       data_in(5) => Data(13),
       data_in(6) => Data(14),
       data_in(7) => Data(15),
       clk => clk,
       data_out => IRout,
       reset => reset,
       wr_IR => wr_ir
  );

U5 : MAR
  port map(
       address => address( 7 downto 0 ),
       clk => clk,
       data_bus => Data( 7 downto 0 ),
       oe_mar => mar_data,
       reset => reset,
       wr_mar => data_mar
  );

U6 : ROM256X16 -- ROM_ROOT--ROM_1--ROMBCD2bin--ROM_Bin_to_BCD_uC --ROM256X16
  port map(
       address_rom => address,
       data_rom => Data,
       oe_rom => rom_data
  );

U7 : pc
  port map(
       data_bus(0) => Data(0),
       data_bus(1) => Data(1),
       data_bus(2) => Data(2),
       data_bus(3) => Data(3),
       data_bus(4) => Data(4),
       data_bus(5) => Data(5),
       data_bus(6) => Data(6),
       data_bus(7) => Data(7),
       clk => clk,
       int_code => Int_code,
       int_req => int_req,
       oe_pc => pc_data,
       ready => ready,
       reset => reset,
       reset_int_req => reset_req,
       wr_pc => data_pc
  );

U8 : debounce
  port map(
       Int_req => int_req,
       Taster => Taster,
       clk => clk,
       reset => reset,
       reset_req => reset_req
  );

U9 : sevensegdec
  port map(
       Data => Reg2,
       a1 => Seg2(0),
       a2 => Seg3(0),
       b1 => Seg2(1),
       b2 => Seg3(1),
       c1 => Seg2(2),
       c2 => Seg3(2),
       d1 => Seg2(3),
       d2 => Seg3(3),
       e1 => Seg2(4),
       e2 => Seg3(4),
       f1 => Seg2(5),
       f2 => Seg3(5),
       g1 => Seg2(6),
       g2 => Seg3(6),
       h1 => Seg2(7),
       h2 => Seg3(7)
  );


end microcontroller;
