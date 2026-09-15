################################################################################
#
# Design name:  router_top
#
# Created by fc write_sdc on Tue Aug 12 16:51:55 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: func
# Corner: ss_m40c
# Scenario: func.ss_m40c

# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_m_func.tcl, \
#   line 10; \
#   /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ff_m40c.tcl, \
#   line 11; \
#   /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_125c.tcl, \
#   line 11; \
#   /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 11
create_clock -name clk -period 3 -waveform {0 1.5} [get_ports {router_clock}]
set_load -pin_load 20 [get_ports {data_out_0[7]}]
set_load -pin_load 20 [get_ports {data_out_0[6]}]
set_load -pin_load 20 [get_ports {data_out_0[5]}]
set_load -pin_load 20 [get_ports {data_out_0[4]}]
set_load -pin_load 20 [get_ports {data_out_0[3]}]
set_load -pin_load 20 [get_ports {data_out_0[2]}]
set_load -pin_load 20 [get_ports {data_out_0[1]}]
set_load -pin_load 20 [get_ports {data_out_0[0]}]
set_load -pin_load 20 [get_ports {data_out_1[7]}]
set_load -pin_load 20 [get_ports {data_out_1[6]}]
set_load -pin_load 20 [get_ports {data_out_1[5]}]
set_load -pin_load 20 [get_ports {data_out_1[4]}]
set_load -pin_load 20 [get_ports {data_out_1[3]}]
set_load -pin_load 20 [get_ports {data_out_1[2]}]
set_load -pin_load 20 [get_ports {data_out_1[1]}]
set_load -pin_load 20 [get_ports {data_out_1[0]}]
set_load -pin_load 20 [get_ports {data_out_2[7]}]
set_load -pin_load 20 [get_ports {data_out_2[6]}]
set_load -pin_load 20 [get_ports {data_out_2[5]}]
set_load -pin_load 20 [get_ports {data_out_2[4]}]
set_load -pin_load 20 [get_ports {data_out_2[3]}]
set_load -pin_load 20 [get_ports {data_out_2[2]}]
set_load -pin_load 20 [get_ports {data_out_2[1]}]
set_load -pin_load 20 [get_ports {data_out_2[0]}]
set_load -pin_load 20 [get_ports {vld_out_0}]
set_load -pin_load 20 [get_ports {vld_out_1}]
set_load -pin_load 20 [get_ports {vld_out_2}]
set_load -pin_load 20 [get_ports {busy}]
set_load -pin_load 20 [get_ports {err}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_c_ss_m40c.tcl, \
#   line 14
set_voltage 0 -object_list {VSS}
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_c_ss_m40c.tcl, \
#   line 13
set_voltage 0.95 -object_list {VDDL}
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_c_ss_m40c.tcl, \
#   line 12
set_voltage 1.16 -object_list {VDDH}
# Warning: Libcell power domain derates are skipped!

# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_c_ss_m40c.tcl, \
#   line 16
set_timing_derate -early 0.93 -cell_delay -clock [current_design]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_c_ss_m40c.tcl, \
#   line 16
set_timing_derate -early 0.93 -cell_delay -data [current_design]
set_timing_derate -early 0.93 -net_delay -clock 
set_timing_derate -early 0.93 -net_delay -data 
# -origin user
set_clock_latency 0.4 [get_clocks {clk}]
# Set latency for io paths.
set_clock_uncertainty -setup 0.2 [get_clocks {clk}]
set_clock_transition 0.2 [get_clocks {clk}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 6
set_driving_cell -lib_cell INVX8_LVT [get_ports {router_clock}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {resetn}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {pkt_valid}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {data_in[7]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {data_in[6]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {data_in[5]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {data_in[4]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {data_in[3]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {data_in[2]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {data_in[1]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {data_in[0]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {read_enb_0}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {read_enb_1}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 7
set_driving_cell -lib_cell INVX8_RVT [get_ports {read_enb_2}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {resetn}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {pkt_valid}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {data_in[7]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {data_in[6]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {data_in[5]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {data_in[4]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {data_in[3]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {data_in[2]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {data_in[1]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {data_in[0]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {read_enb_0}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {read_enb_1}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 14
set_input_delay -clock [get_clocks {clk}] -max 1 [get_ports {read_enb_2}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_0[7]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_0[6]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_0[5]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_0[4]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_0[3]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_0[2]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_0[1]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_0[0]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_1[7]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_1[6]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_1[5]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_1[4]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_1[3]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_1[2]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_1[1]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_1[0]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_2[7]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_2[6]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_2[5]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_2[4]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_2[3]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_2[2]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_2[1]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {data_out_2[0]}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {vld_out_0}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {vld_out_1}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {vld_out_2}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {busy}]
# /home1/PD09/RanjithKC/VLSI_PD/Fusion_compiler_labs/FC_LABS/Router_Project/router_multi_domain/design_data/risc_core_s_func.ss_m40c.tcl, \
#   line 15
set_output_delay -clock [get_clocks {clk}] -max 0.5 [get_ports {err}]
