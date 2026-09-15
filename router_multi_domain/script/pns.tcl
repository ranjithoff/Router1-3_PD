#############################################################################################################
# initialize_floorplan -control_type die -side_length {170 170} -core_offset {15}
# gave soft placement_blockage  
# remove_placement_blockages -all

# if we want to create guardband we need to selected the fifo and right click and go to properties gave the \
# guardband value for four side as 0 0 3 3 and enable voltage area,guardband in view settings

##############################################################################################################

remove_pg_strategies -all
remove_pg_patterns -all
remove_pg_regions -all
remove_pg_via_master_rules -all
remove_pg_strategy_via_rules -all
remove_routes -net_types {power ground} -ring -stripe -macro_pin_connect -lib_cell_pin_connect > /dev/null

connect_pg_net

#############################################################################################################
## RINGS
#############################################################################################################

create_pg_ring_pattern ring_pattern -horizontal_layer M7 \
   -horizontal_width {2} -horizontal_spacing {1} \
   -vertical_layer M8 -vertical_width {2} -vertical_spacing {1}

set_pg_strategy core_ring \
   -pattern {{name: ring_pattern} \
   {nets: {VDDT VDDH VDDL VSS}} {offset: {3 3}}} -core \
   -extension {{nets: VDDT VDDH VDDL VSS} {side: 3} {direction: T} {stop : design_boundary_and_generate_pin }}

compile_pg -strategies core_ring

##############################################################################################################
## RAILS its for create DEFAULT_VA area only
##############################################################################################################

## Before working on RAILS we need to create guardring and placement blockage
 

create_pg_std_cell_conn_pattern rail_pattern -layers M1 

set_pg_strategy M1_rails -voltage_area DEFAULT_VA  \
   -pattern {{name: rail_pattern}{nets: VDDT VSS}} 

compile_pg -strategies M1_rails

############################################################
## RAILS its for create SYNCH area only
############################################################

create_pg_std_cell_conn_pattern rail_pattern -layers M1 

set_pg_strategy M1_rails -voltage_area synch  \
   -pattern {{name: rail_pattern}{nets: VDDL VSS}} 

compile_pg -strategies M1_rails

############################################################
## RAILS its for create FSM area only
############################################################

create_pg_std_cell_conn_pattern rail_pattern -layers M1 

set_pg_strategy M1_rails -voltage_area fsm  \
   -pattern {{name: rail_pattern}{nets: VDDH VSS}} 

compile_pg -strategies M1_rails



#############################################################################################################
## STRIPE/MESH FOR DEFAULT_VA
#############################################################################################################
#   remove_routes -stripe

create_pg_mesh_pattern mesh_patterntt \
   -layers {{{vertical_layer: M8} {width: 0.14}\
             {pitch: 5} {offset: 4}{spacing:interleaving}}\
            {{horizontal_layer: M7} {width: 0.14}\
             {pitch: 5} {offset: 4}{spacing:interleaving}}}

set_pg_strategy M5M6_meshtt \
   -pattern {{name: mesh_patterntt} \
             {nets: VDDT VSS}} -voltage_area DEFAULT_VA \
   -blockage {{voltage_areas : synch fsm} {nets : VDDT VSS}} \
   -extension {{nets:VDDT VSS} {stop: outermost_ring} {direction:{T B L R }}}

compile_pg -strategies M5M6_meshtt

#############################################################################################################
## STRIPE/MESH FOR FSM_H
#############################################################################################################

#   remove_routes -stripe

create_pg_mesh_pattern mesh_patternhh \
   -layers {{{vertical_layer: M6} {width: 0.18}\
             {pitch: 5} {offset: 3}{spacing:interleaving}}\
            {{horizontal_layer: M5} {width: 0.18}\
             {pitch: 5} {offset: 3}{spacing:interleaving}}}

set_pg_strategy M5M6_meshhh \
   -pattern {{name: mesh_patternhh} \
             {nets: VDDH VSS}} -voltage_area fsm \
   -blockage {{voltage_areas : DEFAULT_VA synch} {nets : VDDH VSS}} \
   -extension {{nets:VDDH VSS} {stop: outermost_ring } {direction:{ B R }}}
	   
compile_pg -strategies M5M6_meshhh    

#############################################################################################################
## STRIPE/MESH FOR SYNCH
#############################################################################################################
#   remove_routes -stripe

create_pg_mesh_pattern mesh_patternll \
   -layers {{{vertical_layer: M6} {width: 0.18}\
             {pitch: 5} {offset: 3}{spacing:interleaving}}\
            {{horizontal_layer: M5} {width: 0.18}\
             {pitch: 5} {offset: 3}{spacing:interleaving}}}

set_pg_strategy M5M6_meshll \
   -pattern {{name: mesh_patternll} \
             {nets: VDDL VSS}} -voltage_area synch \
   -blockage {{voltage_areas : DEFAULT_VA fsm} {nets : VDDL VSS}} \
   -extension {{nets:VDDL VSS} {stop: outermost_ring } {direction:{B L}}}
	   
compile_pg -strategies M5M6_meshll   






