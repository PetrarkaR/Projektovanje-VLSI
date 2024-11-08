# Copyright (C) 1991-2012 Altera Corporation
# Your use of Altera Corporation's design tools, logic functions 
# and other software and tools, and its AMPP partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Altera Program License 
# Subscription Agreement, Altera MegaCore Function License 
# Agreement, or other applicable license agreement, including, 
# without limitation, that your use is for the sole purpose of 
# programming logic devices manufactured by Altera and sold by 
# Altera or its authorized distributors.  Please refer to the 
# applicable agreement for further details.

# Quartus II: Generate Tcl File for Project
# File: MIcrocontroller.tcl
# Generated on: Mon Jan 14 03:44:42 2013

# Load Quartus II Tcl Project package
package require ::quartus::project

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "MIcrocontroller"]} {
		puts "Project MIcrocontroller is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists MIcrocontroller]} {
		project_open -revision MIcrocontroller MIcrocontroller
	} else {
		project_new -revision MIcrocontroller MIcrocontroller
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone II"
	set_global_assignment -name DEVICE EP2C20F484C7
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION "12.0 SP2"
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "22:25:39  JANUARY 13, 2013"
	set_global_assignment -name LAST_QUARTUS_VERSION "12.0 SP2"
	set_global_assignment -name VHDL_FILE SevenSegDec.vhd
	set_global_assignment -name VHDL_FILE ROM.vhd
	set_global_assignment -name VHDL_FILE Reg.vhd
	set_global_assignment -name VHDL_FILE pc.vhd
	set_global_assignment -name VHDL_FILE microcontroller.vhd
	set_global_assignment -name VHDL_FILE memory.vhd
	set_global_assignment -name VHDL_FILE MAR.vhd
	set_global_assignment -name VHDL_FILE IR.vhd
	set_global_assignment -name VHDL_FILE DEFS.vhd
	set_global_assignment -name VHDL_FILE Debounce.vhd
	set_global_assignment -name VHDL_FILE controller.vhd
	set_global_assignment -name VHDL_FILE ALU.vhd
	set_global_assignment -name VHDL_FILE Three_state.vhd
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP 0
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 85
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name EDA_DESIGN_ENTRY_SYNTHESIS_TOOL "Design Compiler"
	set_global_assignment -name EDA_INPUT_VCC_NAME VDD -section_id eda_design_synthesis
	set_global_assignment -name EDA_LMF_FILE altsyn.lmf -section_id eda_design_synthesis
	set_global_assignment -name EDA_INPUT_DATA_FORMAT EDIF -section_id eda_design_synthesis
	set_global_assignment -name EDA_SIMULATION_TOOL "ModelSim-Altera (VHDL)"
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation
	set_global_assignment -name STRATIX_DEVICE_IO_STANDARD "3.3-V LVTTL"
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_location_assignment PIN_J2 -to Seg0[0]
	set_location_assignment PIN_J1 -to Seg0[1]
	set_location_assignment PIN_H2 -to Seg0[2]
	set_location_assignment PIN_H1 -to Seg0[3]
	set_location_assignment PIN_F2 -to Seg0[4]
	set_location_assignment PIN_F1 -to Seg0[5]
	set_location_assignment PIN_E2 -to Seg0[6]
	set_location_assignment PIN_E1 -to Seg1[0]
	set_location_assignment PIN_H6 -to Seg1[1]
	set_location_assignment PIN_H5 -to Seg1[2]
	set_location_assignment PIN_H4 -to Seg1[3]
	set_location_assignment PIN_G3 -to Seg1[4]
	set_location_assignment PIN_D2 -to Seg1[5]
	set_location_assignment PIN_D1 -to Seg1[6]
	set_location_assignment PIN_G5 -to Seg2[0]
	set_location_assignment PIN_G6 -to Seg2[1]
	set_location_assignment PIN_C2 -to Seg2[2]
	set_location_assignment PIN_C1 -to Seg2[3]
	set_location_assignment PIN_E3 -to Seg2[4]
	set_location_assignment PIN_E4 -to Seg2[5]
	set_location_assignment PIN_D3 -to Seg2[6]
	set_location_assignment PIN_F4 -to Seg3[0]
	set_location_assignment PIN_D5 -to Seg3[1]
	set_location_assignment PIN_D6 -to Seg3[2]
	set_location_assignment PIN_J4 -to Seg3[3]
	set_location_assignment PIN_L8 -to Seg3[4]
	set_location_assignment PIN_F3 -to Seg3[5]
	set_location_assignment PIN_D4 -to Seg3[6]
	set_location_assignment PIN_L22 -to PORT_IN[0]
	set_location_assignment PIN_L21 -to PORT_IN[1]
	set_location_assignment PIN_M22 -to PORT_IN[2]
	set_location_assignment PIN_V12 -to PORT_IN[3]
	set_location_assignment PIN_W12 -to PORT_IN[4]
	set_location_assignment PIN_U12 -to PORT_IN[5]
	set_location_assignment PIN_U11 -to PORT_IN[6]
	set_location_assignment PIN_M2 -to PORT_IN[7]
	set_location_assignment PIN_M1 -to Int_code[0]
	set_location_assignment PIN_L2 -to Int_code[1]
	set_location_assignment PIN_R22 -to reset
	set_location_assignment PIN_R21 -to taster
	set_location_assignment PIN_L1 -to Clk
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
