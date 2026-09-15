#######################################################################################################################
# Mini Project
# Script: run.tcl
#######################################################################################################################

source -echo ../script/setup.tcl
 
create_lib -technology $TECH_FILE -ref_libs $REFERENCE_LIBRARY Router_mini.dlib

######################################################################################################################
## Read/Convert to WV GEtech/Connet Sub block to TOP block
######################################################################################################################

analyze -format verilog [glob ../../../../../Project/router_pnr_flow/synthysis_DC/rtl/*.v]
elaborate router_top
set_top_module router_top

#######################################################################################################################
##load UPF -power intent
#######################################################################################################################

reset_upf

#load_upf ../script/single_domain.upf 
load_upf ../script/double_domain.upf  

commit_upf
check_mv_design

#save_block -as router_top/1_single_domain_upf_completed
save_block -as router_top/1_multiple_domain_upf_completed

#######################################################################################################################
## RC parasitics, placement site and routing layer setup
#######################################################################################################################

read_parasitic_tech -layermap ../../../ref/tech/saed32nm_tf_itf_tluplus.map -tlup ../../../ref/tech/saed32nm_1p9m_Cmax.lv.nxtgrd -name maxTLU

read_parasitic_tech -layermap ../../../ref/tech/saed32nm_tf_itf_tluplus.map -tlup ../../../ref/tech/saed32nm_1p9m_Cmin.lv.nxtgrd -name minTLU

report_lib -parasitic_tech Router_mini.dlib

set_attribute [get_layers {M1 M3 M5 M7 M9}] routing_direction horizontal
set_attribute [get_layers {M2 M4 M6 M8}] routing_direction vertical
report_ignored_layers
set_ignored_layers -max_routing_layer M8
report_ignored_layers

save_block -as router_top/2_read_paracitics

#######################################################################################################################
## MCMM Setup
#######################################################################################################################

source -echo ../design_data/mcmm_risc_core.tcl 

report_scenarios

report_modes

report_pvt

save_block -as router_top/3_MCMM_completed

############################################################################################################
# TIE CELLS INSERTION
############################################################################################################

get_lib_cells -filter "function_id==a0.0"
get_lib_cells -filter "function_id==Ia0.0"

set_dont_touch [get_lib_cells */TIE*] false
set_lib_cell_purpose -include optimization [get_lib_cells */TIE*]

# it reset after initial map only
#remove_cells *TIE* -force


######################################################################################################################
## Fussion_compile from Initial Map 
######################################################################################################################

compile_fusion -from initial_map -to initial_map

report_unloaded_registers

report_clock_gating

save_block -as router_top/4_initial_mapping

######################################################################################################################
## Fussion_compile from Logical Map
######################################################################################################################

compile_fusion -from logic_opto -to logic_opto
legalize_placement 

save_block -as router_top/5_logical_optimization

######################################################################################################################
## Initilise floor plan and Power Planning
######################################################################################################################

initialize_floorplan -control_type die -side_length {145 145} -core_offset {15}

shape_blocks

initialize_floorplan -control_type die -side_length {160 160} -core_offset {15}

# gave soft placement_blockage  
# remove_placement_blockages -all

# if we want to create guardband we need to selected the fifo and right click and go to properties gave the \
# guardband value for four side as 0 0 3 3 and enable voltage area,guardband in view settings


source -echo ../script/pns.tcl

check_pg_connectivity 
check_pg_drc 
check_pg_missing_vias 

# if floating wires are there run the below command has stragged vias  
# create_pg_vias -nets {VDDL VSS} -from_layers M1 -to_layers M8 -drc no_check

save_block -as router_top/6_PNS_Block

#################################################
# MANUAL PLACEMENT OF PINS
#################################################

#routing_direction horizontal = M1 M3 M5 M7 M9 
#routing_direction vertical = M2 M4 M6 M8 

set_block_pin_constraints -self -allowed_layers {M3 M4 M5 M6}

place_pins -self

set_block_pin_constraints -self -allowed_layers {M3 M5} -sides {1 3}

place_pins -ports [get_ports -filter "direction==in"]

set_block_pin_constraints -self -allowed_layers {M4 M6} -sides {2 4}

place_pins -ports [get_ports -filter "direction==out"]


#remove_terminals -force *

#remove_pin_constraints 


check_design -checks pre_placement_stage

save_block -as router_top/7_floorplaning

#reset_placement

###############################################
######## BOUNDARY CELLS INSERTION #############
###############################################

get_lib_cells *CAP*

create_boundary_cells 	-left_boundary_cell saed32_hvt|saed32_hvt_std/DCAP_HVT \
		-right_boundary_cell saed32_hvt|saed32_hvt_std/DCAP_HVT \
		-bottom_boundary_cells saed32_hvt|saed32_hvt_std/DCAP_HVT \
		-top_boundary_cell saed32_hvt|saed32_hvt_std/DCAP_HVT

connect_pg_net

#remove_cells *CAP* -force


#################################################
## How to get OPTIMIZATED GATE-LEVEL NETLIST 
#################################################

write_verilog logical_gln.v
write_sdc -output sdc_constraints.sdc
write_scan_def -output placed_design.def
report_area
report_utilization

#######################################################################################################################
## Inisilise initial placement
#######################################################################################################################

#reset_placement

compile_fusion -from initial_place -to initial_place
legalize_placement

# its for cell density of the design
set_app_options -name place.coarse.max_density -value 0.3
create_placement -congestion
legalize_placement

check_pg_drc
all_high_transitive_fanout -nets -threshold 10
report_design

#it show only worst case 
report_timing

#it show all ports of the report
report_timing -max 100

report_power

# if we don't got the power of the current scenarios then we change true for dynamic and leakage power of the design
current_scenario
set_scenario_status {func.ss_m40c} -dynamic_power true
report_scenarios
report_power

report_qor -summary
report_optimization_history

save_block -as router_top/8_initial_placement


######################################################################################################################
## Inisilise drc( Design rule ckeck)
######################################################################################################################

compile_fusion -from initial_drc -to initial_drc
report_design
# cell count should have increased
all_high_transitive_fanout -nets -threshold 100 
all_high_transitive_fanout -nets -threshold 40

# get scan chain number here it's 0
get_scan_chain_count
# GUI: bring up congestion map
# This will run: report_congestion -rerun_global_router
report_timing
report_power
report_qor -summary
report_optimization_history

save_block -as router_top/9_initial_drc

######################################################################################################################
## Inisilise optimization
######################################################################################################################
compile_fusion -from initial_opto -to initial_opto
legalize_placement
check_legality
check_pg_drc
get_scan_chain_count
# GUI: visualize scan chains
report_design
report_timing
report_power
report_qor -summary
report_optimization_history

save_block -as router_top/10_initial_optimization

######################################################################################################################
## Final Placement
######################################################################################################################
compile_fusion -from final_place -to final_place
check_legality
# if any legality error using legalize_placement to remove the error
legalize_placement 
report_design
report_timing
report_power
report_qor -summary
report_optimization_history

save_block -as router_top/11_final_placement

######################################################################################################################
## Final Optimization
######################################################################################################################
compile_fusion -from final_opto -to final_opto
report_design
report_timing
report_power
report_qor -summary
report_optimization_history

report_congestion -rerun_global_router

check_pg_drc 

save_block -as router_top/12_final_optimization

######################################################################################################################
## Perform CTS using Clock optimization And NDR Rules
######################################################################################################################
check_design -checks pre_clock_tree_stage

get_lib_cell *NBUF*
set CTS [get_lib_cell *NBUF*]
set_lib_cell_purpose -exclude cts [get_lib_cells]
set_lib_cell_purpose -include cts $CTS

# Soure the NDR rules
source -echo ../../../lab_8a/scripts/ndr.tcl

clock_opt
report_design
report_timing
report_power
report_qor -summary
report_optimization_history

save_block -as router_top/13_clock_optimization

#####################################################################################################################
## Perform Routing 
#####################################################################################################################
check_design -checks pre_route_stage
# route auto is used to global routing and route opt is used to optimization
route_auto
route_opt
route_eco
check_legality
report_design
report_timing
report_power
report_qor -summary
report_optimization_history

check_design -check routability

#Check DRC only routing
check_routes

check_pg_connectivity 

#Check DRC only Power/Ground
check_pg_drc 
check_pg_missing_vias 

report_constraint
report_constraints -all_violators# change_selection [get_pins  phfnr_buf_667/Y ] 
save_block -as router_top/14_Routing

############################################################################################################
# How to Insert Filler Cells in the Design And in the Design
############################################################################################################

get_lib_cells *FIL*
set filler [get_lib_cells *FIL*]
create_stdcell_fillers -lib_cells $filler
connect_pg_net

#remove_cells *FIL* -force

save_block -as router_top/15_insert_filler_cells

############################################################################################################
# Save the Lib and close it
############################################################################################################

#  	save_lib
#	close_blocks -force 
#	close_lib