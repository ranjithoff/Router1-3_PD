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

load_upf ../script/single_domain.upf 
#load_upf ../script/multiple_domain.upf  

commit_upf
check_mv_design

save_block -as router_top/1_single_domain_upf_completed
#save_block -as router_top/1_multiple_domain_upf_completed

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
## Initilise floor plan
######################################################################################################################

initialize_floorplan -control_type die -side_ratio {2 2} -core_offset {10}

set_block_pin_constraints -self -allowed_layers {M3 M4 M5 M6}

place_pins -self

#################################################
# MANUAL PLACEMENT OF PINS
#################################################

#routing_direction horizontal = M1 M3 M5 M7 M9 
#routing_direction vertical = M2 M4 M6 M8 

set_block_pin_constraints -self -allowed_layers {M3 M5} -sides {1 3}

place_pins -ports [get_ports -filter "direction==in"]

set_block_pin_constraints -self -allowed_layers {M4 M6} -sides {2 4}

place_pins -ports [get_ports -filter "direction==out"]


#remove_terminals -force *

#remove_pin_constraints 

######################################################################################################################
## Initiailise Power plan
######################################################################################################################

source -echo ../script/pns.tcl

check_pg_connectivity 
check_pg_drc 
check_pg_missing_vias 

save_block -as router_top/6_floorplaning

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

check_design -checks pre_placement_stage


compile_fusion -from initial_place -to initial_place
legalize_placement
check_pg_drc
all_high_transitive_fanout -nets -threshold 10
report_design

#it show only worst case 
report_timing

#it show all ports of the report
report_timing -max 10 

report_power

# if we don't got the power of the current scenarios then we change true for dynamic and leakage power of the design
current_scenario
set_scenario_status {func.ss_m40c} -dynamic_power true
report_scenarios
report_power

report_qor -summary
report_optimization_history

save_block -as router_top/7_initial_placement


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

save_block -as router_top/8_initial_drc

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

save_block -as router_top/9_initial_optimization

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

save_block -as router_top/10_final_placement

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

save_block -as router_top/11_final_optimization

######################################################################################################################
## Perform CTS using Clock optimization
######################################################################################################################


get_lib_cell NBUF*
set CTS [get_lib_cell NBUF*]
# set CTS [get_lib_cell "*/NBUF*LVT */NBUF*RVT */INVX*LVT */INVX*RVT */CGL* */LSUP* */*DFF*"]

set_dont_touch $CTS false
set_lib_cell_purpose -exclude cts [get_lib_cells]
set_lib_cell_purpose -include cts $CTS

set_app_options -list {cts.multisource.tap_selection {symmetric}}
set_app_options -list {cts.multisource.cell_em_aware {true}}

set cts_references [get_lib_cells -filter valid_purposes=~*cts*]

check_design -checks pre_clock_tree_stage

# Soure the NDR rules
source -echo ../../../lab_8a/scripts/ndr.tcl

set_regular_multisource_clock_tree_options -clock clk\
-topology htree_only\
-tap_boxes {4 4}\
-tap_lib_cells $CTS\
-htree_lib_cells $CTS\
-htree_layers {M6 M7}\
-htree_routing_rule cts_w2_s2_vlg

# set_regular_multisource_clock_tree_options -clock clk\
-topology htree_only\
-tap_boxes {4 4}\
-tap_lib_cells [get_lib_cells */NBUF*RVT]\
-htree_lib_cells [get_lib_cells */NBUF*RVT]\
-htree_layers {M6 M7}\
-htree_routing_rule cts_w2_s2_vlg

synthesize_regular_multisource_clock_trees

set_lib_cell_purpose -include cts [get_lib_cells $cts_references]

# remove_regular_multisource_clock_tree_options
# check_clock_trees

get_cells *clk*
set tap [get_cells {clk_drv_r1c1 clk_drv_r1c2 clk_drv_r1c3 clk_drv_r1c4 clk_drv_r1c5 clk_drv_r1c6 clk_drv_r1c7 clk_drv_r1c8 clk_drv_r2c1 clk_drv_r2c2 clk_drv_r2c3 clk_drv_r2c4 clk_drv_r2c5 clk_drv_r2c6 clk_drv_r2c7 clk_drv_r2c8 clk_drv_r3c1 clk_drv_r3c2 clk_drv_r3c3 clk_drv_r3c4 clk_drv_r3c5 clk_drv_r3c6 clk_drv_r3c7 clk_drv_r3c8 clk_drv_r4c1 clk_drv_r4c2 clk_drv_r4c3 clk_drv_r4c4 clk_drv_r4c5 clk_drv_r4c6 clk_drv_r4c7 clk_drv_r4c8 clk_drv_r5c1 clk_drv_r5c2 clk_drv_r5c3 clk_drv_r5c4 clk_drv_r5c5 clk_drv_r5c6 clk_drv_r5c7 clk_drv_r5c8 clk_drv_r6c1 clk_drv_r6c2 clk_drv_r6c3 clk_drv_r6c4 clk_drv_r6c5 clk_drv_r6c6 clk_drv_r6c7 clk_drv_r6c8 clk_drv_r7c1 clk_drv_r7c2 clk_drv_r7c3 clk_drv_r7c4 clk_drv_r7c5 clk_drv_r7c6 clk_drv_r7c7 clk_drv_r7c8 clk_drv_r8c1 clk_drv_r8c2 clk_drv_r8c3 clk_drv_r8c4 clk_drv_r8c5 clk_drv_r8c6 clk_drv_r8c7 clk_drv_r8c8}]
change_selection $tap
check_legality

get_cells *clk*
set tap_driven [get_cells *clk_drv*]
sizeof_collection $tap_driven

set tap_driven_pins [get_pins -of_objects $tap_driven -filter "direction==out"]
puts "Tap_driven output pins = [sizeof_collection $tap_driven_pins]"
report_collection $tap_driven_pins

set num_taps [sizeof_collection $tap_driven_pins]

set_multisource_clock_tap_options -clock [get_clocks clk]\
-driver_objects $tap_driven_pins -num_taps $num_taps
report_multisource_clock_tap_options

synthesize_multisource_clock_taps

clock_opt -from build_clock -to route_clock

# check_design -checks pre_clock_tree_stage
# clock_opt
report_design
report_timing
report_timing -delay_type min
report_power
report_qor -summary
report_optimization_history

save_block -as router_top/12_clock_optimization_with_htree

#####################################################################################################################
## Perform Routing 
#####################################################################################################################
check_design -checks pre_route_stage
# route auto is used to global routing and route opt is used to optimization
route_auto
route_opt
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

report_constraints -all_violators

#  change_selection [get_pins  phfnr_buf_667/Y ] 
#  change the driving strength to increment or decrement

save_block -as router_top/13_Routing

############################################################################################################
# Insert Filler Cells in the Design
############################################################################################################

get_lib_cells *FIL*
set filler [get_lib_cells *FIL*]
create_stdcell_fillers -lib_cells $filler
connect_pg_net

#remove_cells *FIL* -force

save_block -as router_top/14_insert_filler_cells

############################################################################################################
# Save the Lib and close it
############################################################################################################

#  	save_lib
#	close_blocks -force 
#	close_lib