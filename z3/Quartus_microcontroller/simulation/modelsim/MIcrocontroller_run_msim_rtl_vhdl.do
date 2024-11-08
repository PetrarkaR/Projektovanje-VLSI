transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/SevenSegDec.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/Reg.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/pc.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/microcontroller.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/memory.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/MAR.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/IR.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/DEFS.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/Debounce.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/Three_state.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/ROM.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/controller.vhd}
vcom -93 -work work {D:/Korisnici/Borko/ZaMaltu/Quartus/ALU.vhd}

