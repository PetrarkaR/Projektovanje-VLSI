## Generated SDC file "MIcrocontroller.sdc"

## Copyright (C) 1991-2012 Altera Corporation
## Your use of Altera Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Altera Program License 
## Subscription Agreement, Altera MegaCore Function License 
## Agreement, or other applicable license agreement, including, 
## without limitation, that your use is for the sole purpose of 
## programming logic devices manufactured by Altera and sold by 
## Altera or its authorized distributors.  Please refer to the 
## applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus II"
## VERSION "Version 12.0 Build 263 08/02/2012 Service Pack 2 SJ Web Edition"

## DATE    "Mon Jan 14 03:58:03 2013"

##
## DEVICE  "EP2C20F484C7"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {Clk} -period 200.000 -waveform { 0.000 100.000 } [get_ports {clk}]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {Clk}]  1.000 [get_ports {Int_code[0]}]
set_input_delay -add_delay  -clock [get_clocks {Clk}]  1.000 [get_ports {Int_code[1]}]
set_input_delay -add_delay  -clock [get_clocks {Clk}]  1.000 [get_ports {PORT_IN[0]}]
set_input_delay -add_delay  -clock [get_clocks {Clk}]  1.000 [get_ports {PORT_IN[1]}]
set_input_delay -add_delay  -clock [get_clocks {Clk}]  1.000 [get_ports {PORT_IN[2]}]
set_input_delay -add_delay  -clock [get_clocks {Clk}]  1.000 [get_ports {PORT_IN[3]}]
set_input_delay -add_delay  -clock [get_clocks {Clk}]  1.000 [get_ports {PORT_IN[4]}]
set_input_delay -add_delay  -clock [get_clocks {Clk}]  1.000 [get_ports {PORT_IN[5]}]
set_input_delay -add_delay  -clock [get_clocks {Clk}]  1.000 [get_ports {PORT_IN[6]}]
set_input_delay -add_delay  -clock [get_clocks {Clk}]  1.000 [get_ports {PORT_IN[7]}]
set_input_delay -add_delay  -clock [get_clocks {Clk}]  1.000 [get_ports {Taster}]


#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************
