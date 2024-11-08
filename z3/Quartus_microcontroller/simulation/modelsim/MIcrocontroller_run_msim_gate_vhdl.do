transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {MIcrocontroller.vho}

vcom -93 -work work {D:/Korisnici/Borko/MALTA_MCAST/ZaMaltu/Quartus_microcontroller/microcontroller_TB.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /UUT=MIcrocontroller_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc" microcontroller

source MIcrocontroller_dump_all_vcd_nodes.tcl
add wave *
view structure
view signals
run -all
