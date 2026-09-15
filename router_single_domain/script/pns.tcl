######################################################################################################################
## Initiailise Power plan of PNS
######################################################################################################################

remove_pg_regions -all
remove_pg_via_master_rules -all
remove_pg_strategy_via_rules -all
remove_routes -net_types {power ground} -nets {VDD VSS} -global_route  -ring -stripe -lib_cell_pin_connect

reset_placement

connect_pg_net

########################################
## PG RING
########################################

create_pg_ring_pattern ring_pattern -horizontal_layer M7 \
   -horizontal_width {3} -horizontal_spacing {1} \
   -vertical_layer M8 -vertical_width {3} -vertical_spacing {1}  
   

set_pg_strategy core_ring \
   -pattern {{name: ring_pattern} \
   {nets: {VDD VSS}} {offset: {1}}} -core -extension {{{side: 1 }{direction:B}{stop: design_boundary_and_generate_pin}} \
                      {{side:2 }{direction: T}{stop: design_boundary_and_generate_pin}}}


compile_pg -strategies core_ring

########################################
## PG MESH (its also called upper mesh)
########################################

create_pg_mesh_pattern mesh_pattern \
   -layers {{{vertical_layer: M6} {width: 0.2} {pitch: 10} {offset: 5} {spacing:interleaving}}\
            {{horizontal_layer: M5} {width: 0.3} {pitch: 10} {offset: 4.7} {spacing:interleaving}}}

set_pg_strategy M5M6_mesh \
   -pattern {{name: mesh_pattern} {nets: VDD VSS }} -core \
   -extension {stop:outermost_ring}

compile_pg -strategies M5M6_mesh

##################################################
## PG RAILS AND VIAS (its also called lower mesh)
##################################################

create_pg_std_cell_conn_pattern rail_pattern -layers M1 -rail_width {0.06}

set_pg_strategy M1_rails -core \
   -pattern {{name: rail_pattern}{nets: VDD VSS}}
   
compile_pg -strategies M1_rails


######################################
## CHECK OF PNS
#######################################
#check_pg_connectivity 
#check_pg_drc 
#check_pg_missing_vias

 