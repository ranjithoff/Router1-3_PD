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
   {nets: {VDDH VDDL VSS}} {offset: {3 3}}} -core \
  -extension {{nets: VDDH VDDL VSS} {side : 3} { direction :T} {stop: design_boundary_and_generate_pin}}

compile_pg -strategies core_ring
                    
##############################################################################################################
## RAILS its for create FIFO area only
##############################################################################################################

## Before working on RAILS we need to create guardring and placement blockage
 

create_pg_std_cell_conn_pattern rail_pattern -layers M1 

set_pg_strategy M1_rails -voltage_area fifo  \
   -pattern {{name: rail_pattern}{nets: VDDL VSS}} 

compile_pg -strategies M1_rails

############################################################
## RAILS its for create DEFAULT_VA area only
############################################################


create_pg_std_cell_conn_pattern rail_pattern -layers M1 

set_pg_strategy M1_rails -voltage_area DEFAULT_VA  \
   -pattern {{name: rail_pattern}{nets: VDDH VSS}} 

compile_pg -strategies M1_rails

#############################################################################################################
## STRIPE/MESH FOR FIFO
#############################################################################################################
#   remove_routes -stripe


create_pg_mesh_pattern mesh_pattern \
   -layers {{{vertical_layer: M8} {width: 0.16}\
             {pitch:5} {offset: 3} {spacing : interleaving}}\
            {{horizontal_layer: M7} {width: 0.16}\
            {pitch:5} {offset:3} {spacing: interleaving}}} 

set_pg_strategy M5M6_mesh \
   -pattern {{name: mesh_pattern} \
             {nets: VDDL VSS}} -voltage_area fifo \
	-blockage {{voltage_areas : DEFAULT_VA }{ nets : VDDL VSS}} \
	-extension {{{side:1 3 4 }{nets:VDDL VSS} {stop: outermost_ring} {direction: {T B L R}}}\
                         {{side:2} {nets: VDDL VSS} {stop: core_boundary} {direction: {T B L R}}}}

compile_pg -strategies M5M6_mesh

#############################################################################################################
## STRIPE/MESH FOR PD_TOP
#############################################################################################################



create_pg_mesh_pattern mesh_patternss \
      -layers {{{vertical_layer: M6} {width: 0.18}\
             {pitch:10} {offset: 3} {spacing : interleaving}}\
            {{horizontal_layer: M5} {width: 0.18}\
            {pitch:10} {offset:3} {spacing: interleaving}}} 



set_pg_strategy M5M6_meshss \
   -pattern {{name: mesh_patternss} \
             {nets: VDDH VSS}} -voltage_area DEFAULT_VA \
	-blockage {{voltage_areas : fifo }{ nets : VDDH VSS}} \
	-extension {{nets:VDDH VSS} {stop: outermost_ring} {direction:{T B L R }}}

compile_pg -strategies M5M6_meshss