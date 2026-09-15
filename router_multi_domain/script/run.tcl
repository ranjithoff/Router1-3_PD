##########################################################################################
# Mini Project 
# Script: run.tcl
##########################################################################################

source -echo ../script/setup.tcl
create_lib -technology $TECH_FILE -ref_libs $REFERENCE_LIBRARY Router_mini2.dlib

###########################################################
## Read/Convert to WV GEtech/Connet Sub block to TOP block
###########################################################

analyze -format verilog [glob ../../../../../Project/router_pnr_flow/synthysis_DC/rtl/*.v]
elaborate router_top
set_top_module router_top


###########################################################
##load UPF -power intent
###########################################################			

reset_upf

load_upf ../script/multiple_domain.upf
commit_upf
check_design -checks mv_design

save_block -as router_top/1_mupf_completed

#######################################################################################################################
## RC parasitics, placement site and routing layer setup
#######################################################################################################################

read_parasitic_tech -layermap ../../../ref/tech/saed32nm_tf_itf_tluplus.map -tlup ../../../ref/tech/saed32nm_1p9m_Cmax.lv.nxtgrd -name maxTLU

read_parasitic_tech -layermap ../../../ref/tech/saed32nm_tf_itf_tluplus.map -tlup ../../../ref/tech/saed32nm_1p9m_Cmin.lv.nxtgrd -name minTLU

report_lib -parasitic_tech Router_mini1.dlib

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

################################################################
# report_lib saed32_lvt to check the pvt 
################################################################


##################################################
## Fussion_compile from Initial Map 
##################################################
compile_fusion -from initial_map -to initial_map
report_unloaded_registers
report_clock_gating
save_block -as router_top/4_initial_mapping

##################################################
## Fussion_compile from Logical Map
##################################################
compile_fusion -from logic_opto -to logic_opto
save_block -as router_top/5_logical_optimization

##################################################
## Initilise floor plan
##################################################
initialize_floorplan -control_type die -side_length {150 150} -core_offset {20}

shape_blocks

# gave soft placement_blockage  
# remove_placement_blockages -all

# if we want to create guardband we need to selected the fifo and right click and go to properties gave the \
# guardband value for four side as 0 0 3 3 and enable voltage area,guardband in view settings


set_block_pin_constraints -self -allowed_layers {M3 M4 M5 M6}

place_pins -self

set_block_pin_constraints -self -allowed_layers {M3 M5} -sides {1 3}

place_pins -ports [get_ports -filter "direction==in"]

set_block_pin_constraints -self -allowed_layers {M4 M6} -sides {2 4}

place_pins -ports [get_ports -filter "direction==out"]


#remove_terminals -force *

#remove_pin_constraints 


check_design -checks pre_placement_stage

save_block -as router_top/6_floorplaning


###################Checks for PNS##########################

source -echo ../script/pns1.tcl

check_pg_connectivity 
check_pg_drc 
check_pg_missing_vias 

# if floating wires are there run the below command has stragged vias  
# create_pg_vias -nets {VDDL VSS} -from_layers M1 -to_layers M8 -drc no_check

create_placement
legalize_placement
# reset_placement

save_block -as router_top/7_PNS_Block

###################Place Opt##########################

place_opt

report_design
report_timing
report_power

# if we don't got the power of the current scenarios then we change true for dynamic and leakage power of the design

current_scenario
set_scenario_status {func.ss_m40c} -dynamic_power true
report_scenarios
report_power

report_qor -summary
report_optimization_history

report_congestion -rerun_global_router

check_pg_drc 

save_block -as router_top/8_place_opt

##################################################
## Perform CTS using Clock optimization
##################################################

get_lib_cell NBUF*
set CTS [get_lib_cell NBUF*]
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
-tap_boxes {8 8}\
-tap_lib_cells $CTS\
-htree_lib_cells $CTS\
-htree_layers {M6 M7}\
-htree_routing_rule cts_w2_s2_vlg

synthesize_regular_multisource_clock_trees


# remove_regular_multisource_clock_tree_options





clock_opt
report_design
report_timing
report_power
report_qor -summary
report_optimization_history

save_block -as router_top/9_clock_opt

##################################################
## Perform Routing 
##################################################
check_design -checks pre_route_stage
route_opt
route_eco
report_design
report_timing

report_constraint
report_constraints -all_violators
# change_selection [get_pins  phfnr_buf_667/Y ] 


report_power
report_qor -summary
report_optimization_history
check_design -check routability

check_pg_connectivity 
check_pg_drc 
check_pg_missing_vias 
save_block -as router_top/10_route_opt


############################################################################################################
# How to Insert Filler Cells in the Design And in the Design
############################################################################################################

get_lib_cells *FIL*
set filler [get_lib_cells *FIL*]
create_stdcell_fillers -lib_cells $filler
connect_pg_net

#remove_cells *FIL* -force

save_block -as router_top/11_insert_filler_cells

############################################################################################################
# Save the Lib and close it
############################################################################################################

#  	save_lib
#	close_blocks -force 
#	close_lib